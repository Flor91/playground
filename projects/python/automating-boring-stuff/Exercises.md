---
## Chapter 3 – Functions
### The Collatz Sequence
Write a function named collatz() that has one parameter named number. If number is even, then collatz() should print number // 2 and return this value. If number is odd, then collatz() should print and return 3 * number + 1.

Then write a program that lets the user type in an integer and that keeps calling collatz() on that number until the function returns the value 1. (Amazingly enough, this sequence actually works for any integer—sooner or later, using this sequence, you’ll arrive at 1! Even mathematicians aren’t sure why. Your program is exploring what’s called the Collatz sequence, sometimes called “the simplest impossible math problem.”)

---
## Chapter 4 – Lists
### Comma Code
Say you have a list value like this:
spam = ['apples', 'bananas', 'tofu', 'cats']
Write a function that takes a list value as an argument and returns a string with all the items separated by a comma and a space, with and inserted before the last item. For example, passing the previous spam list to the function would return 'apples, bananas, tofu, and cats'. But your function should be able to work with any list value passed to it.

### Character Picture Grid
Say you have a list of lists where each value in the inner lists is a one-character string, like this:

grid = [['.', '.', '.', '.', '.', '.'],
        ['.', 'O', 'O', '.', '.', '.'],
        ['O', 'O', 'O', 'O', '.', '.'],
        ['O', 'O', 'O', 'O', 'O', '.'],
        ['.', 'O', 'O', 'O', 'O', 'O'],
        ['O', 'O', 'O', 'O', 'O', '.'],
        ['O', 'O', 'O', 'O', '.', '.'],
        ['.', 'O', 'O', '.', '.', '.'],
        ['.', '.', '.', '.', '.', '.']]

Copy the previous grid value, and write code that uses it to print the image.

---
## Chapter 5 – Dictionaries and Structuring Data
### Fantasy Game Inventory
You are creating a fantasy video game. The data structure to model the player’s inventory will be a dictionary where the keys are string values describing the item in the inventory and the value is an integer value detailing how many of that item the player has. For example, the dictionary value {'rope': 1, 'torch': 6, 'gold coin': 42, 'dagger': 1, 'arrow': 12} means the player has 1 rope, 6 torches, 42 gold coins, and so on.

Write a function named displayInventory() that would take any possible “inventory” and display it

stuff = {'rope': 1, 'torch': 6, 'gold coin': 42, 'dagger': 1, 'arrow': 12}

### List to Dictionary Function for Fantasy Game Inventory
Imagine that a vanquished dragon’s loot is represented as a list of strings like this:

dragonLoot = ['gold coin', 'dagger', 'gold coin', 'gold coin', 'ruby']

Write a function named addToInventory(inventory, addedItems), where the inventory parameter is a dictionary representing the player’s inventory (like in the previous project) and the addedItems parameter is a list like dragonLoot. The addToInventory() function should return a dictionary that represents the updated inventory. Note that the addedItems list can contain multiples of the same item.

---
## Chapter 6 – Manipulating Strings
### Table Printer
Write a function named printTable() that takes a list of lists of strings and displays it in a well-organized table with each column right-justified. Assume that all the inner lists will contain the same number of strings. For example, the value could look like this:

tableData = [['apples', 'oranges', 'cherries', 'banana'],
             ['Alice', 'Bob', 'Carol', 'David'],
             ['dogs', 'cats', 'moose', 'goose']]

---
## Chapter 7 – Pattern Matching with Regular Expressions
### Project: Phone Number and Email Address Extractor
Say you have the boring task of finding every phone number and email address in a long web page or document. If you manually scroll through the page, you might end up searching for a long time. But if you had a program that could search the text in your clipboard for phone numbers and email addresses, you could simply press CTRL-A to select all the text, press CTRL-C to copy it to the clipboard, and then run your program. It could replace the text on the clipboard with just the phone numbers and email addresses it finds.

Get the text off the clipboard.

Find all phone numbers and email addresses in the text.

Paste them onto the clipboard.

### Similar Programs
- Find website URLs that begin with http:// or https://.
- Clean up dates in different date formats (such as 3/14/2015, 03-14-2015, and 2015/3/14) by replacing them with dates in a single, standard format.
- Remove sensitive information such as Social Security or credit card numbers.
- Find common typos such as multiple spaces between words, accidentally accidentally repeated words, or multiple exclamation marks at the end of sentences. Those are annoying!!

### Strong Password Detection
Write a function that uses regular expressions to make sure the password string it is passed is strong. A strong password is defined as one that is at least eight characters long, contains both uppercase and lowercase characters, and has at least one digit. You may need to test the string against multiple regex patterns to validate its strength.

### Regex Version of strip()
Write a function that takes a string and does the same thing as the strip() string method. If no other arguments are passed other than the string to strip, then whitespace characters will be removed from the beginning and end of the string. Otherwise, the characters specified in the second argument to the function will be removed from the string.

---
## Chapter 8 – Reading and Writing Files
### Project: Multiclipboard
Say you have the boring task of filling out many forms in a web page or software with several text fields. The clipboard saves you from typing the same text over and over again. But only one thing can be on the clipboard at a time. If you have several different pieces of text that you need to copy and paste, you have to keep highlighting and copying the same few things over and over again.

You can write a Python program to keep track of multiple pieces of text. This “multiclipboard” will be named mcb.pyw (since “mcb” is shorter to type than “multiclipboard”). The .pyw extension means that Python won’t show a Terminal window when it runs this program. (See Appendix B for more details.)

The program will save each piece of clipboard text under a keyword. For example, when you run py mcb.pyw save spam, the current contents of the clipboard will be saved with the keyword spam. This text can later be loaded to the clipboard again by running py mcb.pyw spam. And if the user forgets what keywords they have, they can run py mcb.pyw list to copy a list of all keywords to the clipboard.

Here’s what the program does:

The command line argument for the keyword is checked.

If the argument is save, then the clipboard contents are saved to the keyword.

If the argument is list, then all the keywords are copied to the clipboard.

Otherwise, the text for the keyword is copied to the clipboard.

This means the code will need to do the following:

Read the command line arguments from sys.argv.

Read and write to the clipboard.

Save and load to a shelf file.

### Extending the Multiclipboard
Extend the multiclipboard program in this chapter so that it has a delete <keyword> command line argument that will delete a keyword from the shelf. Then add a delete command line argument that will delete all keywords.

### Mad Libs
Create a Mad Libs program that reads in text files and lets the user add their own text anywhere the word ADJECTIVE, NOUN, ADVERB, or VERB appears in the text file. For example, a text file may look like this:

The ADJECTIVE panda walked to the NOUN and then VERB. A nearby NOUN was
unaffected by these events.
The program would find these occurrences and prompt the user to replace them.

Enter an adjective:
silly
Enter a noun:
chandelier
Enter a verb:
screamed
Enter a noun:
pickup truck
The following text file would then be created:

The silly panda walked to the chandelier and then screamed. A nearby pickup
truck was unaffected by these events.
The results should be printed to the screen and saved to a new text file.

### Regex Search
Write a program that opens all .txt files in a folder and searches for any line that matches a user-supplied regular expression. The results should be printed to the screen.

---
## Chapter 9 – Organizing Files

### Project: Renaming Files with American-Style Dates to European-Style Dates
Say your boss emails you thousands of files with American-style dates (MM-DD-YYYY) in their names and needs them renamed to European-style dates (DD-MM-YYYY). This boring task could take all day to do by hand! Let’s write a program to do it instead.

Here’s what the program does:
- It searches all the filenames in the current working directory for American-style dates.
- When one is found, it renames the file with the month and day swapped to make it European-style.

This means the code will need to do the following:
- Create a regex that can identify the text pattern of American-style dates.
- Call os.listdir() to find all the files in the working directory.
- Loop over each filename, using the regex to check whether it has a date.
- If it has a date, rename the file with shutil.move().

*Ideas for Similar Programs*

There are many other reasons why you might want to rename a large number of files.
- To add a prefix to the start of the filename, such as adding spam_ to rename eggs.txt to spam_eggs.txt
- To change filenames with European-style dates to American-style dates
- To remove the zeros from files such as spam0042.txt

### Project: Backing Up a Folder into a ZIP File
Say you’re working on a project whose files you keep in a folder named C:\\AlsPythonBook. You’re worried about losing your work, so you’d like to create ZIP file “snapshots” of the entire folder. You’d like to keep different versions, so you want the ZIP file’s filename to increment each time it is made; for example, AlsPythonBook_1.zip, AlsPythonBook_2.zip, AlsPythonBook_3.zip, and so on. You could do this by hand, but it is rather annoying, and you might accidentally miss number the ZIP files’ names. It would be much simpler to run a program that does this boring task for you.

For this project, open a new file editor window and save it as backupToZip.py.

*Ideas for Similar Programs*

You can walk a directory tree and add files to compressed ZIP archives in several other programs. For example, you can write programs that do the following:
- Walk a directory tree and archive just files with certain extensions, such as .txt or .py, and nothing else
- Walk a directory tree and archive every file except the .txt and .py ones
- Find the folder in a directory tree that has the greatest number of files or the folder that uses the most disk space

### Selective Copy
Write a program that walks through a folder tree and searches for files with a certain file extension (such as .pdf or .jpg). Copy these files from whatever location they are in to a new folder.

### Deleting Unneeded Files
It’s not uncommon for a few unneeded but humongous files or folders to take up the bulk of the space on your hard drive. If you’re trying to free up room on your computer, you’ll get the most bang for your buck by deleting the most massive of the unwanted files. But first you have to find them.

Write a program that walks through a folder tree and searches for exceptionally large files or folders—say, ones that have a file size of more than 100MB. (Remember, to get a file’s size, you can use os.path.getsize() from the os module.) Print these files with their absolute path to the screen.

### Filling in the Gaps
Write a program that finds all files with a given prefix, such as spam001.txt, spam002.txt, and so on, in a single folder and locates any gaps in the numbering (such as if there is a spam001.txt and spam003.txt but no spam002.txt). Have the program rename all the later files to close this gap.

As an added challenge, write another program that can insert gaps into numbered files so that a new file can be added.


---
## Chapter 10 – Debugging
### Debugging Coin Toss
The following program is meant to be a simple coin toss guessing game. The player gets two guesses (it’s an easy game). However, the program has several bugs in it. Run through the program a few times to find the bugs that keep the program from working correctly.

---
## Chapter 11 – Web Scraping
### Project: mapit.py with the webbrowser Module
It’s tedious to copy a street address to the clipboard and bring up a map of it on Google Maps. You could take a few steps out of this task by writing a simple script to automatically launch the map in your browser using the contents of your clipboard. This way, you only have to copy the address to a clipboard and run the script, and the map will be loaded for you.

This is what your program does:
- Gets a street address from the command line arguments or clipboard.
- Opens the web browser to the Google Maps page for the address.

This means your code will need to do the following:
- Read the command line arguments from sys.argv.
- Read the clipboard contents.
- Call the webbrowser.open() function to open the web browser.

*Ideas for Similar Programs*
As long as you have a URL, the webbrowser module lets users cut out the step of opening the browser and directing themselves to a website. Other programs could use this functionality to do the following:
- Open all links on a page in separate browser tabs.
- Open the browser to the URL for your local weather.
- Open several social network sites that you regularly check.

### Project: “I’m Feeling Lucky” Google Search
Whenever I search a topic on Google, I don’t look at just one search result at a time. By middle-clicking a search result link (or clicking while holding CTRL), I open the first several links in a bunch of new tabs to read later. I search Google often enough that this workflow—opening my browser, searching for a topic, and middle-clicking several links one by one—is tedious. It would be nice if I could simply type a search term on the command line and have my computer automatically open a browser with all the top search results in new tabs. Let’s write a script to do this.

This is what your program does:
- Gets search keywords from the command line arguments.
- Retrieves the search results page.
- Opens a browser tab for each result.

This means your code will need to do the following:
- Read the command line arguments from sys.argv.
- Fetch the search result page with the requests module.
- Find the links to each search result.
- Call the webbrowser.open() function to open the web browser.

*Ideas for Similar Programs*
The benefit of tabbed browsing is that you can easily open links in new tabs to peruse later. A program that automatically opens several links at once can be a nice shortcut to do the following:
- Open all the product pages after searching a shopping site such as Amazon
- Open all the links to reviews for a single product
- Open the result links to photos after performing a search on a photo site such as Flickr or Imgur

### Project: Downloading All XKCD Comics
Blogs and other regularly updating websites usually have a front page with the most recent post as well as a Previous button on the page that takes you to the previous post. Then that post will also have a Previous button, and so on, creating a trail from the most recent page to the first post on the site. If you wanted a copy of the site’s content to read when you’re not online, you could manually navigate over every page and save each one. But this is pretty boring work, so let’s write a program to do it instead.

XKCD is a popular geek webcomic with a website that fits this structure (see Figure 11-6). The front page at http://xkcd.com/ has a Prev button that guides the user back through prior comics. Downloading each comic by hand would take forever, but you can write a script to do this in a couple of minutes.

Here’s what your program does:
- Loads the XKCD home page.
- Saves the comic image on that page.
- Follows the Previous Comic link.
- Repeats until it reaches the first comic.

This means your code will need to do the following:
- Download pages with the requests module.
- Find the URL of the comic image for a page using Beautiful Soup.
- Download and save the comic image to the hard drive with iter_content().
- Find the URL of the Previous Comic link, and repeat.

*Ideas for Similar Programs*
Downloading pages and following links are the basis of many web crawling programs. Similar programs could also do the following:
- Back up an entire site by following all of its links.
- Copy all the messages off a web forum.
- Duplicate the catalog of items for sale on an online store.

### Command Line Emailer
Write a program that takes an email address and string of text on the command line and then, using Selenium, logs into your email account and sends an email of the string to the provided address. (You might want to set up a separate email account for this program.)

This would be a nice way to add a notification feature to your programs. You could also write a similar program to send messages from a Facebook or Twitter account.

### Image Site Downloader
Write a program that goes to a photo-sharing site like Flickr or Imgur, searches for a category of photos, and then downloads all the resulting images. You could write a program that works with any photo site that has a search feature.

### 2048
2048 is a simple game where you combine tiles by sliding them up, down, left, or right with the arrow keys. You can actually get a fairly high score by repeatedly sliding in an up, right, down, and left pattern over and over again. Write a program that will open the game at https://gabrielecirulli.github.io/2048/ and keep sending up, right, down, and left keystrokes to automatically play the game.

### Link Verification
Write a program that, given the URL of a web page, will attempt to download every linked page on the page. The program should flag any pages that have a 404 “Not Found” status code and print them out as broken links.
---
## Chapter 12 – Working with Excel Spreadsheets

### Project: Reading Data from a Spreadsheet
Say you have a spreadsheet of data from the 2010 US Census and you have the boring task of going through its thousands of rows to count both the total population and the number of census tracts for each county. (A census tract is simply a geographic area defined for the purposes of the census.) Each row represents a single census tract.

Even though Excel can calculate the sum of multiple selected cells, you’d still have to select the cells for each of the 3,000-plus counties. Even if it takes just a few seconds to calculate a county’s population by hand, this would take hours to do for the whole spreadsheet.

In this project, you’ll write a script that can read from the census spreadsheet file and calculate statistics for each county in a matter of seconds.

This is what your program does:
- Reads the data from the Excel spreadsheet.
- Counts the number of census tracts in each county.
- Counts the total population of each county.
- Prints the results.

This means your code will need to do the following:
- Open and read the cells of an Excel document with the openpyxl module.
- Calculate all the tract and population data and store it in a data structure.
- Write the data structure to a text file with the .py extension using the pprint module.

*Ideas for Similar Programs*
Many businesses and offices use Excel to store various types of data, and it’s not uncommon for spreadsheets to become large and unwieldy. Any program that parses an Excel spreadsheet has a similar structure: It loads the spreadsheet file, preps some variables or data structures, and then loops through each of the rows in the spreadsheet. Such a program could do the following:
- Compare data across multiple rows in a spreadsheet.
- Open multiple Excel files and compare data between spreadsheets.
- Check whether a spreadsheet has blank rows or invalid data in any cells and alert the user if it does.
- Read data from a spreadsheet and use it as the input for your Python programs.


### Project: Updating a Spreadsheet
In this project, you’ll write a program to update cells in a spreadsheet of produce sales. Your program will look through the spreadsheet, find specific kinds of produce, and update their prices.
Each row represents an individual sale. The columns are the type of produce sold (A), the cost per pound of that produce (B), the number of pounds sold (C), and the total revenue from the sale (D). The TOTAL column is set to the Excel formula =ROUND(B3*C3, 2), which multiplies the cost per pound by the number of pounds sold and rounds the result to the nearest cent. With this formula, the cells in the TOTAL column will automatically update themselves if there is a change in column B or C.

Now imagine that the prices of garlic, celery, and lemons were entered incorrectly, leaving you with the boring task of going through thousands of rows in this spreadsheet to update the cost per pound for any garlic, celery, and lemon rows. You can’t do a simple find-and-replace for the price because there might be other items with the same price that you don’t want to mistakenly “correct.” For thousands of rows, this would take hours to do by hand. But you can write a program that can accomplish this in seconds.

Your program does the following:
- Loops over all the rows.
- If the row is for garlic, celery, or lemons, changes the price.

This means your code will need to do the following:
- Open the spreadsheet file.
- For each row, check whether the value in column A is Celery, Garlic, or Lemon.
- If it is, update the price in column B.
- Save the spreadsheet to a new file (so that you don’t lose the old spreadsheet, just in case).

*Ideas for Similar Programs*
Since many office workers use Excel spreadsheets all the time, a program that can automatically edit and write Excel files could be really useful. Such a program could do the following:
- Read data from one spreadsheet and write it to parts of other spreadsheets.
- Read data from websites, text files, or the clipboard and write it to a spreadsheet.
- Automatically “clean up” data in spreadsheets. For example, it could use regular expressions to read multiple formats of phone numbers and edit them to a single, standard format.

### Multiplication Table Maker
Create a program multiplicationTable.py that takes a number N from the command line and creates an N×N multiplication table in an Excel spreadsheet. Row 1 and column A should be used for labels and should be in bold.

### Blank Row Inserter
Create a program blankRowInserter.py that takes two integers and a filename string as command line arguments. Let’s call the first integer N and the second integer M. Starting at row N, the program should insert M blank rows into the spreadsheet.

You can write this program by reading in the contents of the spreadsheet. Then, when writing out the new spreadsheet, use a for loop to copy the first N lines. For the remaining lines, add M to the row number in the output spreadsheet.

### Spreadsheet Cell Inverter
Write a program to invert the row and column of the cells in the spreadsheet. For example, the value at row 5, column 3 will be at row 3, column 5 (and vice versa). This should be done for all cells in the spreadsheet.

You can write this program by using nested for loops to read in the spreadsheet’s data into a list of lists data structure. This data structure could have sheetData[x][y] for the cell at column x and row y. Then, when writing out the new spreadsheet, use sheetData[y][x] for the cell at column x and row y.

### Text Files to Spreadsheet
Write a program to read in the contents of several text files (you can make the text files yourself) and insert those contents into a spreadsheet, with one line of text per row. The lines of the first text file will be in the cells of column A, the lines of the second text file will be in the cells of column B, and so on.

Use the readlines() File object method to return a list of strings, one string per line in the file. For the first file, output the first line to column 1, row 1. The second line should be written to column 1, row 2, and so on. The next file that is read with readlines() will be written to column 2, the next file to column 3, and so on.

### Spreadsheet to Text Files
Write a program that performs the tasks of the previous program in reverse order: The program should open a spreadsheet and write the cells of column A into one text file, the cells of column B into another text file, and so on.
---
## Chapter 13 – Working with PDF and Word Documents
http://automatetheboringstuff.com/chapter13/

---
## Chapter 14 – Working with CSV Files and JSON Data


---
## Chapter 15 – Keeping Time, Scheduling Tasks, and Launching Programs


---
## Chapter 16 – Sending Email and Text Messages


---
## Chapter 17 – Manipulating Images


---
## Chapter 18 – Controlling the Keyboard and Mouse with GUI Automation
