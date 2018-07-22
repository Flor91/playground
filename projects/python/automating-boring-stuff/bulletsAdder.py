#! python3
# bulletsAdder.py - Adds Wikipedia bullet points to the start of each line of text from clipboard

'''
The bulletPointAdder.py script will get the text from the clipboard, add a star and space to the beginning of each line, and then paste this new text to the clipboard. 
'''

import pyperclip

text = pyperclip.paste()

lines = text.split('\n')
text = '\n* '.join(lines)

pyperclip.copy(text)
