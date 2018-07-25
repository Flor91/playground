#! python3
# lucky.py - Gets search keywords, Retrieves the search results page,
# Opens a browser tab for each result.

import requests, pyperclip, sys, webbrowser, bs4

if len(sys.argv) > 1:
    keyword = ' '.join(sys.argv[1:])
else:
    keyword = pyperclip.paste()

print('Googling ' + keyword + ' ...')
res = requests.get('http://google.com/search?q=' + keyword)
res.raise_for_status()

soup = bs4.BeautifulSoup(res.text, "lxml")
linkElems = soup.select('.r a')

numOpen = min(5, len(linkElems))
print('Opening ' + str(numOpen) + ' results...')

for i in range(numOpen):
    webbrowser.open('http://google.com' + linkElems[i].get('href'))
