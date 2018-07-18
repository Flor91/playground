from data_parsing.generate_athena_dataset.utils import logging_module as logging
import os
import datetime
import pandas as pd
import numpy as np
import data_parsing.generate_athena_dataset.utils.data_processing as data_processing

# Get logger
logger = logging.logger
TODAYS_DATE = datetime.datetime.now().date()
CURRENT_DIRECTORY = os.path.abspath(os.curdir)
RAW_FILES_DIR = os.path.join(CURRENT_DIRECTORY, "raw_data")
FILENAME = 'gen31_dbo_usvSequence'
DATA_FILE = os.path.join(RAW_FILES_DIR, FILENAME)
DATASET_VERSION = '3.1'
TRAIN_USAGE = 'train'
VALIDATION_USAGE = 'validation'
TEST_USAGE = 'test'

trainingSetStudent = os.path.join(RAW_FILES_DIR, FILENAME + 'TrainingSetStudent_WithIdemStep.txt')
trainingSetTeacher = os.path.join(RAW_FILES_DIR, FILENAME + 'TrainingSetTeacher_WithIdemStep.txt')
validationSetStudent = os.path.join(RAW_FILES_DIR, FILENAME + 'CrossValidationSetStudent_WithIdemStep.txt')
validationSetTeacher = os.path.join(RAW_FILES_DIR, FILENAME + 'CrossValidationSetTeacher_WithIdemStep.txt')
testSetStudent = os.path.join(RAW_FILES_DIR, FILENAME + 'TestSetStudent_WithIdemStep.txt')
testSetTeacher = os.path.join(RAW_FILES_DIR, FILENAME + 'TestSetTeacher_WithIdemStep.txt')

training_set_student_file = open(trainingSetStudent, '+a')
training_set_teacher_file = open(trainingSetTeacher, '+a')
validation_set_student_file = open(validationSetStudent, '+a')
validation_set_teacher_file = open(validationSetTeacher, '+a')
test_set_student_file = open(testSetStudent, '+a')
test_set_teacher_file = open(testSetTeacher, '+a')


def create_files():
    os.makedirs(os.path.dirname(DATA_FILE), exist_ok=True)


def split_conversations(df):
    # Split conversations into data used for training, testing and validating the bot
    df = df.reset_index()
    conv_ids = df['key'].drop_duplicates().tolist()
    train_ids, test_ids, validation_ids = np.split(conv_ids, [int(.9 * len(conv_ids)), int(.95 * len(conv_ids))])

    logger.info('Train ids = %d - Test ids = %d - Validation ids = %d'
                % (len(train_ids), len(test_ids), len(validation_ids)))
    return train_ids, test_ids, validation_ids


def generate_datasets(df, ids, usage):

    if usage == TRAIN_USAGE:
        student_file = training_set_student_file
        teacher_file = training_set_teacher_file
    elif usage == TEST_USAGE:
        student_file = test_set_student_file
        teacher_file = test_set_teacher_file
    elif usage == VALIDATION_USAGE:
        student_file = validation_set_student_file
        teacher_file = validation_set_teacher_file

    # Create data
    create_dataset(ids, usage, df, student_file, teacher_file)

    logger.info('All data %s files generated successfully. Directory: ' % usage, RAW_FILES_DIR)


def create_dataset(ids, usage, df, student_file, teacher_file):
    """Creates training, testing and validation data set files,
    and tracks conversations used in each to track through Athena."""
    conversation_usage_columns = ['dataset_version', 'generation_date', 'conversation_guid', 'usage']
    df_conversations = pd.DataFrame(columns=conversation_usage_columns)

    # Create data
    for id in ids:
        df_conversations_aux = pd.DataFrame([DATASET_VERSION, TODAYS_DATE, id, usage],
                                            columns=conversation_usage_columns)
        df_conversations.append(other=df_conversations_aux, ignore_index=True)

        dconv = df.loc[id]
        problem = dconv['problem'].values[0]

        # Create chats history
        dstudent, dteacher = data_processing.create_chat_history(dconv)

        # Create student data set
        for message in dstudent:
            student_file.write(problem + ' #### ' + message + '\n')

        # Create teacher data set
        for message in dteacher:
            teacher_file.write(message + '\n')
