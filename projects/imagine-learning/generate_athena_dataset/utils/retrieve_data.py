from data_parsing.generate_athena_dataset.utils import aws_sessions as session, logging_module as logging
from pyathena.util import as_pandas
import multiprocessing as mp
import pandas as pd
import re

# Get logger
logger = logging.logger


def get_conversations_id():
    ids_query = """ 
                    SELECT DISTINCT conversation_guid, partition_0 as year, partition_1 as month
                    FROM "torchevere-app19-lt"."torchevere_app19_live_teaching_s3_bucket" 
                    WHERE event_type_id IN (5, 7, 8, 9) AND message != ''
                    GROUP BY conversation_guid, partition_0, partition_1, partition_2
                    HAVING count(DISTINCT conversation_message_id) > 8
                    ORDER BY partition_0, partition_1
                    LIMIT 5000
                """

    query_id, result_set = session.execute_query(ids_query, None)
    conversations = as_pandas(result_set).reset_index()
    conv_amt = len(conversations['conversation_guid'].tolist())

    logger.debug('Found %d conversations' % conv_amt)
    logger.debug('\n %s' % conversations.head())

    session.clean_query_output_file(query_id)

    return conversations, conv_amt


def get_conversations_data(conversations):
    """Read conversations data using partitions (year, month, day),
    paginating results by conversation_guid, having a 1000 page size"""
    curr = mp.current_process()
    logger.debug('Starting process task ' + curr.name)
    df = pd.DataFrame()

    conversations_data_query = """ 
                SELECT concat(CAST(item_step_id AS varchar), '-', conversation_guid) AS key, item_step_id,
                 conversation_message_id, message, event_type_id
                FROM "torchevere-app19-lt"."torchevere_app19_live_teaching_s3_bucket" 
                WHERE event_type_id IN (5, 7, 8, 9) AND message != '' 
                AND conversation_guid IN %(conversation_guids)s
                AND partition_0 = '%(year)s' AND partition_1 = '%(month)s'
            """

    def gen_pages():
        conv = conversations.reset_index()
        conv = conv.set_index('year')
        years = conv.index.unique().tolist()

        for y in years:
            try:
                y_conversations = conv.loc[y].reset_index().set_index('month')
                months = y_conversations.index.unique().tolist()
            except KeyError:
                break

            for m in months:
                m_conversations = y_conversations.loc[m]
                conversation_guids = m_conversations['conversation_guid'].tolist()

                index = 0
                while index < len(conversation_guids):
                    yield (
                        format_results(conversation_guids[index:(index + 9999)]),
                        y, m
                    )
                    index += 10000

    for page, y, m in gen_pages():
        params = {'conversation_guids': page, 'year': y, 'month': m}
        query_id_indx, result_set_indx = session.execute_query(conversations_data_query, params)
        dt_indx = as_pandas(result_set_indx)
        if dt_indx.empty:
            logger.error("Query to Athena did not return any results")
            session.clean_query_output_file(query_id_indx)
            break
        df = df.append(other=dt_indx)
        session.clean_query_output_file(query_id_indx)

        logger.debug('Finished getting athena data - ' + curr.name)

    df.sort_values(['key', 'conversation_message_id'])
    return df


def format_results(results):
    """Formats a list of conversation ids into a single string of format: ('id1', 'id2', 'id3') """
    formatted_results = ''
    for x in results:
        guid = re.findall(r'\d+-\d+', x)
        if guid:
            if formatted_results:
                formatted_results += ', \'' + guid[0] + '\''
            else:
                formatted_results = '(\'' + guid[0] + '\''
    return formatted_results + ')'


def get_problem_definitions():
    stem_query = """ 
                SELECT DISTINCT id as item_step_id, stem as problem
                FROM "torchevere-app19-lt"."item_steps_updated3_fixed_fixed"
    """

    query_id, result_set = session.execute_query(stem_query, None)
    df_problems = as_pandas(result_set)

    session.clean_query_output_file(query_id)
    return df_problems

