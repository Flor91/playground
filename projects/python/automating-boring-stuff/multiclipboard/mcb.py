#! python3
# mcb.py - Multiclipboard
# Usage: py.exe mcb.pyw save <keyword> - Saves clipboard to keyword.
#        py.exe mcb.pyw <keyword> - Loads keyword to clipboard.
#        py.exe mcb.pyw list - Loads all keywords to clipboard.
#        py.exe mcb.pyw delete <keyword> - Deletes keyword from clipboard.
#        py.exe mcb.pyw delete - Deletes all keywords from clipboard.

import pyperclip, sys, shelve

def saveClip(key, mcbShelve):
    ''' Save new clip to the board '''
    mcbShelve[key] = pyperclip.paste()
    print(mcbShelve[key] + '\nSaved to multiboard under Key: ' + key)

def returnKeys(mcbShelve):
    ''' Displays the saved keys '''
    if not mcbShelve.keys():
        print('The multiclipboard is empty, why don\'t you save something?')
        sys.exit()
    keys = ', '.join(list(mcbShelve.keys()))
    print('Saved keys in the multiboard are: \n' + keys)
    save = input('Save to clipboard? y/[n] ') or 'n'
    if save.lower() == 'y':
        pyperclip.copy(keys)

def returnClip(key, mcbShelve):
    ''' Copies to clipboard and displays the text associated to the keys '''
    try:
        text = mcbShelve[key]
    except:
        print('Key not found on multiclipboard.')
        returnKeys(mcbShelve)
        sys.exit()
    pyperclip.copy(text)
    save = input('Display text? y/[n] ') or 'n'
    if save.lower() == 'y':
        print(text)

def deleteClip(key, mcbShelve):
    ''' Deletes associated key from multiclipboard '''
    try:
        del mcbShelve[key]
    except:
        print('Key not found on multiclipboard.')
        returnKeys(mcbShelve)
        sys.exit()
    print('Key ' + key + ' successfully deleted from multiclipboard')

def delete(mcbShelve):
    ''' Deletes associated key from multiclipboard '''
    for k in mcbShelve.keys():
        del mcbShelve[k]
    print('Successfully deleted multiclipboard')

if len(sys.argv) < 2 or len(sys.argv) > 3 :
    print(''' python mcb.py [action]      - Use the multiclipboard capabilities
                            save [key]    - Saves new clip under the given key
                            list          - Lists all saved keys
                            [key]         - Copies associated clip
                            delete [key]  - Deletes given key
                            delete        - Deletes all saved keys
        ''')
    sys.exit()

mcbShelve = shelve.open('mcb')
action = sys.argv[1].lower()

if action == 'save':
    try:
        key = sys.argv[2].lower()
    except:
        print(''' Save command must be used with a key to associate ''')
        shelve.close()
        sys.exit()
    saveClip(key, mcbShelve)
elif action == 'delete':
    try:
        key = sys.argv[2].lower()
        deleteClip(key, mcbShelve)
    except:
        delete(mcbShelve)
elif action == 'list':
    returnKeys(mcbShelve)
else:
    returnClip(action, mcbShelve)

mcbShelve.close()
