# In[1]:
from data_parsing.generate_athena_dataset.utils import files_manager, data_processing, retrieve_data, \
    logging_module as logging, aws_sessions as aws
from multiprocessing import Pool
import os
import pandas as pd
import gc
import sys

number_processes = os.cpu_count()

# Get logger
logger = logging.logger


# In[2]:
def main(argv):
    # In[3]:
    def get_percentage():
        # Get percentage of data set used for training the bot
        #return input('What percentage should be used to train the bot (value between 0-100) [100]: ')
        return 100

    def run_tasks_in_parallel(task, items, second_argument=pd.DataFrame()):
        """Execute tasks using multiprocessing"""
        pool = Pool()

        if not second_argument.empty:
            tuples = []
            for x in range(items.__len__()):
                tuples.insert(x, (items[x], second_argument))
            results = pool.starmap(task, tuples)
        else:
            results = pool.map(task, items)

        pool.close()
        pool.join()
        gc.collect()

        return results

    percentage, train_percentage, test_percentage, validate_percentage = logging.get_arguments()

    # In[3]:
    # Select conversations guids, filtering those with less than 8 messages
    conversations, conversations_amt = retrieve_data.get_conversations_id()

    logger.info('Completed retrieval of conversation ids. Found %d ids.' % conversations_amt)

    conversations = conversations.sample(frac=float(percentage)/100)

    n = data_processing.get_length(conversations)

    logger.info('%d conversations will be used.' % n)
    logger.info('Conversation Ids:\n %s' % conversations)

    # In[6]:
    # Setup a list of processes to get conversation data in parallel
    part = round(n / number_processes)
    items = [conversations.iloc[part * x:part*(x + 1)] for x in range(0, number_processes)]

    logger.info('Starting retrieval of conversations data')

    dfs = run_tasks_in_parallel(retrieve_data.get_conversations_data, items)

    logger.debug('Completed retrieval of conversation data.')
    logging.log_time()
    logger.info('Conversation Data:\n %s' % dfs[0])

    # In[7]:
    # Get problem from items data
    logger.info('Starting retrieval of problem definitions')
    df_problems = retrieve_data.get_problem_definitions()
    dfs = run_tasks_in_parallel(data_processing.add_problem_definitions, dfs, df_problems)
    logger.info('Conversation Data:\n %s' % dfs[0])

    # In[8]:
    # Add speaker according to event type and remove any left over duplicates
    logger.info('Starting addition of speakers to data')
    event_type_speakers = {5: "student", 7: "teacher", 8: "teacher", 9: "teacher"}
    speakers_df = pd.DataFrame(list(event_type_speakers.items()), columns=['event_type_id', 'speaker'])
    dfs = run_tasks_in_parallel(data_processing.get_speaker, dfs, speakers_df)
    logger.info('Conversation Data:\n %s' % dfs[0])

    # In[9]:
    # Group consecutive messages from same speaker and remove conversations with less than 8 messages
    logger.info('Group conversations by speakers, and remove short conversations')
    dfs = run_tasks_in_parallel(data_processing.remove_short_conversations, dfs)
    logger.info('Conversation Data:\n %s' % dfs[0])

    # In[12]:
    # Replace keys from dictionary translations found on messages (case insensitive) with its value
    dfs = run_tasks_in_parallel(data_processing.replace_messages, dfs)

    logger.info('Split conversations into train, test and validation')
    df = data_processing.join_dataframes(dfs)
    train_ids, test_ids, validation_ids = files_manager.split_conversations(df)

    # In[16]:
    # Create directory if it does not exist
    logger.info('Start creating data set files')
    files_manager.create_files()
    files_manager.generate_datasets(df, train_ids, files_manager.TRAIN_USAGE)
    files_manager.generate_datasets(df, test_ids, files_manager.TEST_USAGE)
    files_manager.generate_datasets(df, validation_ids, files_manager.VALIDATION_USAGE)

    # In[15]:
    logging.log_time()

    # In[17]:
    df_json = data_processing.convert_df_to_json(df)
    aws.upload_data_to_s3(df_json)


if __name__ == "__main__":
    main(sys.argv[1:])

