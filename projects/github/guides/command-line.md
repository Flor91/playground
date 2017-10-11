1. Open your Terminal application.
Ensure Git 1.9.5 or :arrow_up: is installed, type:

 ''' git --version'''

If your Git version is below 1.9.5, check git-scm.com to download the latest version.

2. Set your name in Git by replacing <YOUR NAME> with your first and last name:

 '''git config --global user.name <YOUR NAME>'''

3. Set your email in Git by replacing <EMAIL> with the email associated with your GitHub account.

 '''git config --global user.email <EMAIL>'''

4. Set line-ending behavior for your operating system:
On Windows:
'''git config --global core.autocrlf true'''

On Mac and Unix-like systems:
'''git config --global core.autocrlf input'''

5.To see your current configurations, type:

 '''git config --list'''


# Create a Branch

1. Create a new branch. Replace <BRANCH-NAME> with descriptive name:

 '''git branch <BRANCH-NAME>'''

2. Check your repository’s status:

 '''git status'''
Notice that although you created a new branch, you are still checked out to master, as indicated by the in-line response from Git.

3. Check out to your new branch:

 '''git checkout <BRANCH-NAME>'''

4. Verify that you are now checked out to your new branch:

 '''git status'''


 # Add Commits

 1. Determine your file’s status. Remember that git status allows us to see the status of the files on our branch at any given time. Your file is listed under the heading Untracked files.

 '''git status'''

2.Add your file to the staging area so it’s prepared to become part of the next commit.

 '''git add <FILE-NAME>'''

3. See your file’s current status. Your file is now listed under the heading Changes to be committed. This tells us that the file is in the staging area. It also indicates this is a new file.

 '''git status'''

4. Commit your file. A commit tells Git to collect all of the files in the staging area and store them to version control as a single unit of work. Git will open your default text editor where you can enter the commit message.

 '''git commit'''

5. Type the commit message, save and quit your editor.

The default text editor associated with Git is vi in most cases, which requires that you press the Esc key then type :wq to save and quit after entering your commit message.
Alternatively, you can bypass vi altogether and enter your commit message inline with git commit -m "your message"

6. See the history of commits:

 '''git log'''

# Push

1. Push your commits to the remote, and set a tracking branch. Type:

 '''git push -u origin <BRANCH-NAME>'''

2. Enter your GitHub username and password, if prompted to do so.
3. Create a Pull Request on GitHub.
4. Fill out the body of the Pull Request with information about the changes you’re introducing.
