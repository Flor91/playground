# TODO:  Pull data from myfitnesspal
# TODO:  Pull data from Habitica
# TODO:  Pull data from watch
# TODO:  Pull data from Samsung fit
# TODO:  Pull data from Google fit
# TODO:  Pull data from github
# TODO:  Pull data from evernote
# TODO:  Pull data from pics

from src.data import syncMFP, syncHabitica
import requests, json


def get_data(day):
    """Get data from different sources"""
    funcs = [get_myfitnesspal_data, get_habitica_data, get_motivation]
        #, get_watch_data, get_samsungfit_data, get_googlefit_data,
             #get_github_data, get_evernote_data]

    data = [funcs[x](day) for x in range(len(funcs))]

    return data


def get_myfitnesspal_data(day):
    """Get data from My Fitness Pal"""
    return syncMFP.get_data(day)


def get_habitica_data(day):
    """Get data from Habitica"""
    return syncHabitica.get_data(day)


def get_motivation(ignore):
    headers = {"Accept": "application/json"}
    res = requests.get('https://quotes.rest/qod', headers=headers)
    jres = json.loads(res.content)
    quote = jres['contents']['quotes'][0]['quote']

    return quote


def get_watch_data():
    """Get data from Watch"""

def get_samsungfit_data():
    """Get data from Samsung Fit"""

def get_googlefit_data():
    """Get data from Google Fit"""

def get_github_data():
    """Get data from Github"""

def get_evernote_data():
    """Get data from Evernote"""
