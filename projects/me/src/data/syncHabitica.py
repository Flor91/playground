import requests, io
import pandas
from datetime import date
from subprocess import Popen, PIPE

login = '731f875a-2e6b-4b87-8e6e-0ea6f27acdfb'
password = '7c02fbc2-e4c4-434a-9218-8cf09b38ed01'


def get_data(day):
    headers = {
                'x-api-user': login,
                'x-api-key': password
            }

    history = requests.get('https://habitica.com/export/history.csv', headers=headers)

    df = pandas.read_csv(io.StringIO(history.text))
    # columns = ['Task Name', 'Task ID', 'Task Type', 'Date', 'Value']

    df = df.drop(columns=['Task ID', 'Value'])
    df['Date'] = pandas.to_datetime(df['Date'])
    mask = (df['Date'] >= day.strftime("%Y-%m-%d"))

    df = df.loc[mask]

    return df['Task Name'].tolist()


def command_data(commands):
    if not isinstance(commands, (list,)):
        commands = [commands]

    p = Popen(['habitipy'] + commands, stdin=PIPE, stdout=PIPE, stderr=PIPE)
    output, err = p.communicate(b"input data that is passed to subprocess' stdin")

    out = str(output).replace('\\r', '').split('\\n')[1:]

    print(commands)
    for line in out:
        print(line)

    return out


def get_dailies():
    command_data('dailies')

def get_habits():
    command_data('habits')

def get_todos():
    command_data('todos')


# command_data(['dailies'])
# command_data(['habits'])
# command_data(['todos'])
#
# print(get_data(date(year=2018, month=8, day=1)))