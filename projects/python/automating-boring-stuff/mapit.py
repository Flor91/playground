#! python3
# mapit.py - launch the map in your browser using the contents of your clipboard

import webbrowser, pyperclip, sys

if len(sys.argv) > 1:
    location = ' '.join(sys.argv[1:])
else:
    location = pyperclip.paste()

print('Searching for ' + location)
webbrowser.open('https://www.google.com.ar/maps/search/' + location)
