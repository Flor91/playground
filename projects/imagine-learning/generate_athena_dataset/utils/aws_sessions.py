from data_parsing.generate_athena_dataset.utils import logging_module as logging
import boto3
import multiprocessing as mp
from pyathena import connect
from pyathena.async_cursor import AsyncCursor

# Get logger
logger = logging.logger

# Get AWS credentials from environment variables
AWS_ACCESSS_KEY_ID = 'AKIAJICUO2BMUIFW2L2Q'
AWS_SECRET_ACCESSS_KEY = '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'
bucket = 'torchevere-app19-live-teaching-s3-bucket'
s3_stating_dir = 's3://' + bucket + '/'
region_name = 'us-east-1'
s3_output_bucket = 's3://torchevereml/dataset_usages'

session = boto3.Session(aws_access_key_id=AWS_ACCESSS_KEY_ID, aws_secret_access_key=AWS_SECRET_ACCESSS_KEY,
                        region_name=region_name)

# Create connection stream
cursor = connect(aws_access_key_id=AWS_ACCESSS_KEY_ID, aws_secret_access_key=AWS_SECRET_ACCESSS_KEY,
                 s3_staging_dir=s3_stating_dir, region_name=region_name, cursor_class=AsyncCursor).cursor()


def execute_query(q, params):
    """Executes a given query on Athena database, formats parameters into the query.
       Finally it throws an exception if query has not run successfully."""
    curr = mp.current_process()
    if params:
        logger.debug(curr.name + ': Number of ids:' + str(params['conversation_guids'].__sizeof__()) + ' - Year '
              + params['year'] + ' - Month ' + params['month'])
        q = q % {'conversation_guids': params['conversation_guids'], 'year': params['year'], 'month': params['month']}
        query_id, future = cursor.execute(q)
    else:
        logger.debug(' Executing query: \n %s' % q)
        query_id, future = cursor.execute(q)
    result_set = future.result()
    assert result_set.state == 'SUCCEEDED', "Could not execute query successfully. Process %s. " \
                                            "Result state: %s " % (curr.name, result_set.state)
    logger.debug(curr.name + ' - Query Id: ' + query_id)
    return query_id, result_set


def clean_query_output_file(query_id):
    """Queries run in Athena generate two intermediate output files in S3 Bucket.
    This function cleans up those file."""
    curr = mp.current_process()
    logger.debug(curr.name + ' - Deleting Files - Query Id:' + query_id)
    s3 = session.resource("s3")
    s3.Object(bucket, query_id + ".csv").delete()
    s3.Object(bucket, query_id + ".csv.metadata").delete()


def upload_data_to_s3(conversations_json):
    logger.debug('Uploading data to S3 LLEEGOOO')
    s3 = boto3.client('s3')
    s3.upload_file(conversations_json)


class AwsSession:
    @staticmethod
    def close():
        cursor.close()


