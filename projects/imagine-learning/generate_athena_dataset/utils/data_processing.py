from data_parsing.generate_athena_dataset.utils import logging_module as logging
import pandas as pd

# Get logger
logger = logging.logger


def get_length(df):
    return df.index.__len__()


def add_problem_definitions(df_conversations, df_problems):
    # Add problems to data frame
    df_conversations = pd.merge(df_conversations, df_problems, on=['item_step_id'])
    df_conversations = df_conversations.drop('item_step_id', axis=1)
    return df_conversations


def get_speaker(df_conversations, df_speakers):
    return df_conversations.merge(df_speakers, on='event_type_id')


def remove_short_conversations(df):
    # Group consecutive messages from same speaker
    df = df.sort_values(['key', 'conversation_message_id'])
    df['change_speaker'] = (df.speaker != df.speaker.shift()).cumsum()
    groupby = df.groupby(['key', 'problem', 'change_speaker', 'speaker'])
    grouped = groupby.apply(lambda x: "%s" % ' ~~~ '.join(x['message']))
    grouped.index.names = ['key', 'problem', 'id', 'speaker']
    df = grouped.reset_index()
    df.columns = ['key', 'problem', 'id', 'speaker', 'msg']
    df = df.drop(['id'], axis=1)

    # Remove conversations with less than 6 messages
    dt = df.groupby('key').filter(lambda x: len(x['msg']) > 6)
    dt = dt.set_index('key')
    df = df.set_index('key')

    return df[(df.index.isin(dt.index))].reset_index()


def replace_messages(df):
    translations = {
        'TTM': 'Imagine Math',
        'What does this problem ask you to find?': 'Please tell me what you are asked to find in this problem'
    }

    translate = {'(?i)' + k: v for k, v in translations.items()}
    df['msg'] = df['msg'].replace(translate, regex=True)

    logger.debug(df.head())
    return df


def create_chat_history(dconv):
    dconv.reset_index()
    dstudent = []
    dteacher = []

    history = ""

    for i, row in enumerate(dconv.itertuples(index=True, name='Pandas')):
        if row.speaker == 'student':
            history = history + " @@@ S: " + row.msg
            dstudent.append(history.lstrip(" @@@"))
        else:
            text = "T: " + row.msg
            history = history + " @@@ " + text
            dteacher.append(text)

    return dstudent, dteacher


def convert_df_to_json(df):
    return df.to_json(orient='records')


def join_dataframes(dfs):
    df = pd.DataFrame()
    for d in dfs:
        df.append(other=d)
    return df


