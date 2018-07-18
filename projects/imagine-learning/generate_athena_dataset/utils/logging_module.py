import logging
import time
import getopt
import sys

# Setup logger
logger = logging.getLogger('get_athena_data')
logger.setLevel(logging.DEBUG)

# create file handler which logs even debug messages
fh = logging.FileHandler('logs/generate-athena-dataset.log')
fh.setLevel(logging.DEBUG)

# create console handler with a higher log level
ch = logging.StreamHandler()
ch.setLevel(logging.ERROR)

# create formatter and add it to the handlers
formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
fh.setFormatter(formatter)
ch.setFormatter(formatter)

# add the handlers to the logger
logger.addHandler(fh)
logger.addHandler(ch)

logger.info('\n-----------------------------------------------------------\n'
            '           Initializing data set generator                     '
            '\n-----------------------------------------------------------\n')

initial_time = time.clock()


def log_time():
    query_time = time.clock()
    logger.debug('Query execution finished. Execution Time: ' + str(query_time - initial_time))


def get_arguments(argv=None):
    percentage = 100
    test_percentage = 80
    validate_percentage = 10
    train_percentage = 10

    try:
        opts, args = getopt.getopt(argv, "p:tr:te:va:", ["percentage=", "train=", "test=", "validate="])
    except getopt.GetoptError:
        logger.error(
            'Script arguments are: get_athena_data.py -p <percentage> -tr <train> -te <test> -va <validate>')
        sys.exit(2)
    for opt, arg in opts:
        if opt in ("-p", "--percentage"):
            percentage = arg
        else:
            if opt in ("-tr", "--train"):
                train_percentage = arg
            if opt in ("-te", "--test"):
                test_percentage = arg
            if opt in ("-va", "--validate"):
                validate_percentage = arg
        if arg > 100 or arg < 1:
            logger.error('Percentage parameter must be between 1 and 100')
            sys.exit(2)

    if train_percentage and test_percentage and validate_percentage:
        assert train_percentage + test_percentage + validate_percentage == 100, "Usage percentages must sum 100"
    elif train_percentage and test_percentage:
        validate_percentage = 100 - (test_percentage + train_percentage)
        assert validate_percentage > 0, "Usage percentages must sum 100"
    elif validate_percentage and test_percentage:
        train_percentage = 100 - (test_percentage + validate_percentage)
        assert train_percentage > 0, "Usage percentages must sum 100"
    elif validate_percentage and train_percentage:
        test_percentage = 100 - (train_percentage + validate_percentage)
        assert test_percentage > 0, "Usage percentages must sum 100"
    elif validate_percentage:
        test_percentage = (100 - validate_percentage) / 2
        train_percentage = test_percentage
    elif test_percentage:
        validate_percentage = (100 - test_percentage) / 2
        train_percentage = validate_percentage
    elif train_percentage:
        test_percentage = (100 - train_percentage) / 2
        validate_percentage = test_percentage

    logger.info("Arguments: percentage = %d, train_percentage = %d, test_percentage = %d, validate_percentage = %d"
                % (percentage, train_percentage, test_percentage, validate_percentage))
    return percentage, train_percentage, test_percentage, validate_percentage
