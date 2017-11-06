from boto import kinesis
import json
import time
from logging import Logger

## Read shards:
logger = logging.getLogger("consumer")
stream_name = 'TorchevereMathLog'
connection = kinesis.connect_to_region('us-east-2')

tries = 0
while tries < 10:
    tries += 1
    time.sleep(1)
    try:
        response = connection.describe_stream(stream_name)
        if response['StreamDescription']['StreamStatus'] == 'ACTIVE':
            break
    except :
        logger.error('error while trying to describe kinesis stream : %s')
else:
    raise Exception('Stream is still not active, aborting...')

shard_ids = []
stream_name = None
if response and 'StreamDescription' in response:
    stream_name = response['StreamDescription']['StreamName']
    shard_iterator_type = 'TRIM_HORIZON'
    for shard_id in response['StreamDescription']['Shards']:
         shard_id = shard_id['ShardId']
         shard_iterator = connection.get_shard_iterator(stream_name, shard_id, shard_iterator_type)
         shard_ids.append({'shard_id' : shard_id ,'shard_iterator' : shard_iterator['ShardIterator'] })

tries = 0
result = []
while tries < 100:
     tries += 1
     response = connection.get_records(shard_iterator = shard_iterator, limit = 123)
     shard_iterator = response['NextShardIterator']
     if len(response['Records'])> 0:
          for res in response['Records']:
               result.append(res['Data'])
          print result, shard_iterator
