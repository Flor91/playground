#! python3
# phoneEmainExtractor.py - Extracts emails and phones from texts copied into clipboard

import pyperclip, re

text = str(pyperclip.paste())

phoneRegex = re.compile(r'''(
    (\d{3}|\(\d{3}\))?                # area code
    (\s|-|\.)?                        # separator
    (\d{3})                           # first 3 digits
    (\s|-|\.)                         # separator
    (\d{4})                           # last 4 digits
    (\s*(ext|x|ext.)\s*(\d{2,5}))?    # extension
    )''', re.VERBOSE)

emailRegex = re.compile(r'''(
     [a-zA-Z0-9._%+-]+      # username
     @                      # @ symbol
     [a-zA-Z0-9.-]+         # domain name
      (\.[a-zA-Z]{2,4})      # dot-something
      )''', re.VERBOSE)

webRegex = re.compile(r'''(
    (((http)|(https)):\\\\)?  # begins with either http:// or https://
    (www\.)
    [a-zA-Z0-9._%+-]+      # webpage name
    (\.[a-zA-Z]{2,4})      # dot-something
)''', re.VERBOSE)

# dateRegex = re.compile(r'''
#     ([1-9]{1})|([0-9]{2})|(\d{4})   # first part of date
#     (/|-|\.|\\)              # separator
#     ([1-9]{1})|(\d{2}))      # second part of date
#     (/|-|\.|\\)              # separator
#     (([1-9]{1})|(\d{2})|(\d{4})         # third part of date
#     ''', re.VERBOSE)

matches = []

for groups in phoneRegex.findAll(text):
	phoneNum = '-'.join([groups[1], groups[3], groups[5]])
	if groups[8] != '':
		phoneNum += ' x' + groups[8]
	matches.append(phoneNum)

for groups in emailRegex.findall(text):
	matches.append(groups[0])

for groups in webRegex.findAll(text):
    matches.append(groups[0])

# for groups in dateRegex.findAll(text):
#
#     y = groups[5]
#     if len(y) != 4:
#         if int(y) < 20:
#             y = "20" + y
#         else:
#             y = "19" + y
#     date = '/'.join([groups[1], groups[3], groups[5]])
#     matches.append(date)

if len(matches) > 0:
	pyperclip.copy('\n'.join(matches))
	print('Copied to clipboard:')
	print('\n'.join(matches))
else:
	print('No phone numbers or email addresses found.')
