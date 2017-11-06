import boto3
import json
import time
from faker import Faker

fake = Faker('en_US')
stream_name = 'TorchevereMathLog'
kinesis_client = boto3.client('kinesis', region_name='us-east-2')
id = fake.random_int(min=0, max=999)

class Object:
    def toJSON(self):
        return json.dumps(self, default=lambda o: o.__dict__,
            sort_keys=True, indent=4)

def gen_message(id):
    chat_id = fake.ean(length=13)
    message = Object()
    message.channel = "/chat/mc-" + chat_id
    message.data = Object()
    message.data.type = "message"
    message.data.action = "message"
    message.data.actor = fake.name()
    message.data.timestamp = fake.date_time_between(start_date="-1y", end_date="now", tzinfo=None).isoformat()
    message.data.payload = Object()
    message.data.payload.chat_id = "mc-" + chat_id
    message.data.payload.body = fake.sentence(nb_words=6, variable_nb_words=True, ext_word_list=None)
    message.clientId = fake.uuid4()
    message.id = id
    message.ext = Object()
    message.ext.token = "student-" + chat_id
    message.ext.role = "student"
    message.ext.id = fake.uuid4()
    return message.toJSON()

while True:
    parsed = json.loads(gen_message(id))
    print json.dumps(parsed, indent=4, sort_keys=True)
    kinesis_client.put_record(StreamName=stream_name,
        Data=json.dumps(parsed), PartitionKey='aws')
    id =+ 1
    # wait for 5 second
    time.sleep(5)
