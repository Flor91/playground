#! python3
# passwordLocker.py - An insecure password locker program

'''
You probably have accounts on many different websites. 
It’s a bad habit to use the same password for each of them because if any of those sites has a security breach, 
the hackers will learn the password to all of your other accounts. 
It’s best to use password manager software on your computer that uses one master password to unlock the password manager. 
Then you can copy any account password to the clipboard and paste it into the website’s Password field.

You want to be able to run this program with a command line argument that is the account’s name—for instance, email or blog. 
That account’s password will be copied to the clipboard so that the user can paste it into a Password field. 
This way, the user can have long, complicated passwords without having to memorize them.
'''

PASSWORDS = {'email': 'kshfjbdsf',
			'blog': '874382yjd',
			'luggage': 'kds87tgy'}

import sys, pyperclip

if len(sys.argv) < 2:
	print("Usage: python passwordLocker.py [account] - copy account password")
	sys.exit()

account = sys.argv[1] # Should be an account name

if account in PASSWORDS: 
	pyperclip.copy(PASSWORDS[account])
	print("Password for " + account + " copied in clipboard")
else:
	print("Account " + account + " not found")


'''
On Windows, you can create a batch file to run this program with the WIN-R Run window. (For more about batch files, see Appendix B.) 
Type the following into the file editor and save the file as pw.bat in the C:\Windows folder:

@py.exe C:\\Python34\\pw.py %*
@pause
With this batch file created, running the password-safe program on Windows is just a matter of pressing WIN-R and typing pw <account name>.
'''