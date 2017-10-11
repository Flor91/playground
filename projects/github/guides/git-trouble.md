# Too Many (small) Git Commits!
While you were making changes you might have created a bunch of tiny commits, but when it comes time to actually push your changes back to your remote, you want to prevent your commit history from being inundated with the 30 commits you just made. This scenario guides you through creating a more concise history.

### I didn't push
If you haven’t pushed your changes, you can adjust the commits you created without worrying about causing problems for other collaborators:

1. Ensure you are on the correct branch and enter: git log --oneline.
2. For this example, we are going to combine the commits associated with the addition of files 4, 5, and 6. So identify the SHA-1 associated with the commit for adding file 3.
3. Enter the following: git reset --soft SHA-1, where SHA-1 is the SHA-1 associated with the adding file 3 commit.
4. Enter git status. You should see files 4, 5, and 6; in the Staging Area (aka ready to be committed).
5. Enter: git commit -m "Adding files 4, 5, and 6".
6. Enter: git log --oneline, your commit history should be modified.

Congratulations you just combined a bunch of commits into a single commit! Now, none of the other collaborators will know that you made way too many commits!

### I pushed

I know that avalanche of commits looks bad, but it doesn’t need to be permanent. A lot of people unintentionally create problems by trying to use Git to fix something that has already been pushed to the remote.

Instead, let it go (for now) and use the Squash and Merge option when you are ready to merge the pull request. This will reduce that avalanche of commits down to a single snowflake on master!

Depending on the merge options enabled for your repository, you can:

#### When merging:
- merge-pull-request-button: Merge all of the commits into the base branch by clicking Merge pull request. If the Merge pull request option is not shown, then click the merge drop down menu and select Create a merge commit.
- click-squash-and-merge-button: Squash the commits into one commit by clicking the merge drop down menu, selecting Squash and merge and then clicking the Squash and merge button.
- select-rebase-and-merge-from-drop-down-menu: Rebase the commits individually onto the base branch by clicking the merge drop down menu, selecting Rebase and merge and then clicking the Rebase and merge button.


# Git Commit Message Sucks
‘Edited stuff’ might have seemed like a decent commit message at 3am, but in hindsight, you might want to provide a little more context. Covering the different commands you can use to revert the error of your commit message-ways, this scenario identifies how to get more descriptive.

As you begin creating commits you might ‘accidentally’ create a commit message that is borderline atrocious; something like ‘Fixed the thing’. Although you are definitely aware of the thing you just fixed, other collaborators (including future you) will not know what you fixed and more importantly, why you needed to fix it. Thankfully, Git is well aware of our tendency to craft terrible commit messages and has a handful of commands that save even the vaguest commit message.

### I didn't push
You have a couple of options when it comes to fixing a bad commit message. First, you need to ask yourself:

Am I trying to fix the last commit I made or one a few commits back?
### Fixing the Last Commit
If you are fixing the last commit you made you can do the following:

Ensure you are on the correct branch
Use git log --oneline to ensure the commit you want to fix is at the top of the list.
Enter: git commit --amend.
Enter the desired commit message and close the text editor.
BOOM you just fixed your terrible commit message and now no one is the wiser. Congratulations!!!

### Fixing an Older Commit
If you aren’t fixing your last commit, you can perform the following:

Ensure you are on the correct branch and enter: git log --oneline
Identify the SHA-1 hash associated with the commit just before the one you want to fix. For practice, let’s use the one where file 4 was added.
Enter git reset --mixed SHA-1, where SHA-1 is the SHA-1 of the commit before the one you want to fix.
The changes you made in the file 5 and file 6 commits are now sitting in your working directory. Simply re-add and re-commit the changes.

### I pushed

Before you begin worrying about that terrible commit message you have pushed to the remote, let’s talk about the risks associated with fixing it. Fixing a commit message you have already pushed is going to require you to use git push --force-with-lease. Using push --force-with-lease can cause some serious problems for other collaborators on your project. The embarrassment of a mispelled :grin: word is nothing compared to the embarrassment of messing up your collaborators. If your commit is really that bad, or if causing problems doesn’t trouble you, keep reading.

Start by asking yourself:

Am I trying to fix the last commit I made or one a few commits back?

## Fixing the Last Commit
If you are fixing the last commit you made you can do the following:

Ensure you are on the correct branch
Use git log --oneline to ensure the commit you want to fix is at the top of the list.
Enter: git commit --amend.
Enter the desired commit message and close the text editor.
Enter: git push --force-with-lease to force your change to your remote.
BOOM you just fixed your terrible commit message and you potentially caused problems for other collaborators. Congratulations!!! In all seriousness, editing a commit message might seem important at the time, but pushing a terrible commit message isn’t the worst thing in the world, so it is recommended that you do this sparingly.

## Fixing an Older Commit
If you aren’t fixing your last commit, you can perform the following…actually wait, this process is very complex and you really need to figure out if you need to fix those commit messages that badly.

Still here? Ok, here we go:

Ensure you are on the correct branch and enter: git log --oneline
Identify the SHA-1 hash for the commit just before the one you would like to change. For this example, let’s pretend we want to fix the commit for file 5, so we will pick the SHA-1 associated with the file 4 commit.
Enter: git rebase -i SHA-1, where SHA-1 is the SHA-1 of the commit for adding file 4. The -i is the interactive option and will open your text editor, allowing you to modify the rebase script.
Identify the commits you want to modify in the list and replace the word pick with an e or the word edit. When you are happy with your selections, close the editor and go back to the terminal.
The rebase will stop at the first commit to be edited. To begin editing the first commit message, enter git commit --amend. Your text editor will open, allowing you to edit the commit message.
Close the text editor and enter: git rebase --continue.
Repeat the two previous steps for each commit you would like to edit.
When you have edited the last commit, the rebase will finish. Enter: git push --force-with-lease to push your new commits to the remote.

# Git Committed to Wrong Branch
So you got excited about making some changes and accidentally committed your changes to the wrong branch? Happens all the time. This scenario walks you through the steps required to successfully remove those commits and commit them to the right branch, even if you already pushed them up!

## I didn't push
The good news is, you didn’t push, so none of the collaborators on your project know you just committed a bunch of changes directly to Master on ‘accident’ (I mean, lets be serious, those changes are awesome and are definitely gonna get merged). Here is how we can fix that ‘mistake’.

Ensure you are on the branch you accidentally made those commits to. If you followed the ‘Setting Up Your Scenario Environment’ directions, you should have made a few commits to a branch named test.
Enter: git log --oneline and identify the SHA-1 hash associated with the commit just before the first incorrect commit. In this case, let’s pretend file 5 was the first one that should have been on the other branch.
Enter: git reset --mixed SHA-1, where SHA-1 is the SHA-1 associated with the adding file 4 commit.
Enter: git status. You should see files 5 and 6 in your working directory.
Enter: git checkout -b correct. This will create a new branch named correct and check you out to that branch.
Enter: git status. Files 5 and 6 should still be in your working directory.
Add both File 5 and File 6 by entering: git add file* .
Enter: git status. File 5 and 6 should now be in the staging area waiting to be committed.
Enter git commit -m "Adding file 5 and 6".
Congratulations, you just removed the commits you made to the incorrect branch and added them to the correct branch!

P.S. Next time, try to remember to run a quick git checkout BRANCH before you get working on that sweet new feature :wink:.


## I pushed

### First Things First: Fix Master
Since this usually happens on master, the first thing you probably need to do is get those untested, unapproved commits out of master.

While on master enter: git log --oneline. Identify the SHA-1 hash for the commits that should be removed. In this case, let’s use the adding file 3 commit.
Enter: git revert SHA-1, where SHA-1 is the hash for the adding file 3 commit. You can revert multiple commits in the same operation by adding a list of SHA-1’s with a space between each one.
You can modify the revert commit message(s) if you would like or just close the editor.
Use git push to send the changes to the remote.

### Rebuilding the Branch
Now that master is safe, let’s create a new branch and grab those commits.

Create a new branch with: git checkout -b BRANCH-NAME(or check out to one you had already created).
Enter git reflog to identify the SHA-1 hash for the commits you need to rescue.
Enter: git cherry-pick SHA-1, where SHA-1 is the hash for the commit you want to place on the branch. You can cherry pick multiple commits by adding multiple SHA-1s separated by a space.
Push your new branch to the remote with: git push -u origin BRANCH-NAME

# Accidental Git Commit
Did you make a commit before you had actually finished all of the related changes? Maybe you left one lonely little change in the working directory? Perhaps your commit included changes that were unrelated. In either case, we can fix that, just follow along and git out of trouble.

## I didn't push
If you didn’t push that incomplete commit up to your remote, it makes it a little bit easier to resolve this misstep.

Ensure you are on the correct branch and enter: git log --oneline.
We are going to assume you didn’t mean to commit file 6, so identify the SHA-1 hash for the adding file 5 commit.
Enter: git reset --mixed SHA-1, where SHA-1 is the SHA-1 hash associated with the adding file 5 commit.
Enter: git status. You should see file6.md in your working directory.
Now you are ready to keep making your changes and no one is the wiser! :guitar:

## I pushed
Since we accidentally pushed our changes to the remote, you need to revert the commit (or commits) to prevent them creating any problems for other collaborators.

Ensure you are on the correct branch and enter: git log --oneline.
Identify the SHA-1 hash for the incorrect commit. For this example, let’s use the adding file 4 commit.
Enter: git revert SHA-1, where SHA-1 is the SHA-1 hash for the commit where you created file 4.
Enter a commit message (or simply keep the predefined revert message) and close the editor.
Enter: git push. You have successfully undone the commit you recently pushed to your remote.
### Recovering Your Work
Now that the branch on the remote is fixed, you may want to recover that accidental commit and finish your work. Here’s how you can do it:

Use git log --oneline to identify the SHA-1 of the revert commit. If you left the default message, it will say something like Revert "adding file 4".
Type git revert SHA-1 where the SHA-1 is the revert commit.
Finish your work on the files.
Type: git add to stage your changes.
Type: git commit --amend to meld your changes into the previous commit.
Enter an appropriate commit message and close your text editor.
Enter: git push to send your beautiful (and complete) new commit to the remote.


# Just Make it Go Away! - Breaking Things With Git
That innovative fix was supposed to fix everything! Instead your project is a garbage fire and you just want everything to go back to how it was. Have no fear, we can make that happen.

## I didn't push

Well, you didn’t push, that means no one else knows about your failed experiment. Use the following steps to get back to your happy place.

First, ask yourself:

Is it all terrible? Or can I use some of it?

### Make it all go away!
Sometimes the best way to fix a problem is to pretend it never happened. The easiest solution is to just delete the branch:

Check out to the master branch with: git checkout master
Enter: git branch -D BRANCH-NAME to delete the local copy of the branch.

### It isn’t all bad
If some of it can be salvaged, you can use the following approach:

If you want to see something kinda cool, open your local repository in a file browser (Finder, My Computer, etc.) and leave it to the side (but in view).
Ensure you are on the correct branch and enter: git log --oneline.
Identify the SHA-1 hash for the last commit you want to keep. For this example, let’s pretend files 1 and 2 are good, but we want to get rid of the rest, so grab the SHA-1 for “adding file 2”.
Enter: git reset --hard SHA-1, where SHA-1 is the SHA-1 hash for the commit where you created file 2. If you have your file explorer open, you might have noticed something pretty cool happen!
Type: git status and ls, notice that everything except files 1 and 2 are gone!
Enter: git log --oneline, all of the commits after adding file2.md are gone!

### Wait, I Shouldn’t Have Done That!!!
OK, so that one rage-induced moment you ‘accidentally’ deleted that file because you just couldn’t stand the sight of it. What if you could bring it back from the dead? You can:

#### Bring One File Back
Enter: git reflog.
Identify the SHA-1 for the adding file 6 commit.
Enter: git cherry-pick SHA-1 where SHA-1 is the commit for “Adding file 6”.
Enter: git log --oneline and ls to see that file 6 and its commit are back.

#### Bring Them All Back
After you took the dog for a walk, you realized where you were going wrong (fresh air works every time) and you want it all back. Don’t worry, you can do that too:

Enter: git reflog.
Identify the SHA-1 for the adding file 6 commit.
Enter: git reset --hard SHA-1 where SHA-1 is the commit for “Adding file 6”.
Enter: git log --oneline to see all of the commits are back. Notice the SHA-1 hashes of the commit - they match the original commits!

## I pushed
This is what makes Git awesome! You can try new things and, when they don’t work out, just get rid of them. First, ask yourself:

Is it all terrible? Or can I use some of it?

### Make it all go away!
Ok, if you really mean it, we can get rid of the entire branch on the remote.

First, let’s go back to the master branch with: git checkout master
Enter: git push origin :BRANCH-NAME or git push --delete BRANCH-NAME to delete the branch on the remote.
Enter: git fetch --prune to delete the remote tracking branch.
Enter: git branch -D BRANCH-NAME to delete the local copy of the branch.

### It isn’t all bad
If some of it can be salvaged, you can use the following approach:

Ensure you are on the correct branch and enter: git log --oneline.
Identify the SHA-1 hash for the last commit you want to keep. For this example, let’s pretend files 1 and 2 are good, but we want to get rid of the rest, so grab the SHA-1 for “adding file 2”.
Enter: git reset --hard SHA-1, where SHA-1 is the SHA-1 hash for the commit where you created file 2.
Type: git status and ls, notice that everything except files 1 and 2 are gone!
Enter: git push --force.


-------------------------------------------------------
TEORIA
-------------------------------------------------------

## Reset
Reset allows us to rewind our branch to look like it did at a previous point in history.

When you use git reset you are overwriting one or more of the three trees git uses to manage your work.

Three areas showing working area, staging area, and history

The trees that are overwritten are determined by the mode of reset you use.

--soft: The history is overwritten to look like it did at the selected point in time, but the other two trees are untouched. This means the changes you made in the commits between the old branch tip and the new branch tip will be sitting in your staging area.
--mixed: The history and the staging area are overwritten, but the working directory is untouched. This means your changes will be waiting in the working directory. This is the default mode of reset
--hard: All three trees (history, staging, and working) are re-written to look like the repository at the selected point in time. --hard can be destructive! Modified files that have not been committed will be overwritten by a hard reset.

Are They Really Gone?
The good news is, git keeps a running log of every commit HEAD has pointed to. You can find this log with git reflog.

A couple caveats though:

The reflog isn’t pushed to the remote. So the only place you can access it is in your local repository.
The reflog only displays activity for the last 30 - 90 days. 90 days applies to any commit that is currently part of a branch. 30 days applies to commits that are “unreachable” - in other words, they are not currently on a branch.

Important Reminder
The reset command will change the commit history for your project which can cause problems for your collaborators if you have already pushed. Alternatively, revert, a command we use in other exercises, provides a non-destructive method to modify changes made to your repository and should be considered in place of reset when the commit(s) have already been pushed to the remote.


# Commit –amend
The commit --amend command enables you to modify the message and contents of the last commit you made.

This can be helpful if you identify a spelling error or grammatical issue with the commit message you created or if you forgot to add some of the changes in the working directory.

How commit –amend Works
git commit --amend will combine the changes in your staging area with the changes in the last commit you made. Your text editor will also open, allowing you to edit the commit message.

Push –force-with-lease
The push --force command allows you to override a branch history. This can be problematic if another collaborator pushed some commits to the branch you are working on. If you forgot to fetch the latest updates before pushing with the --force flag, those commits will be deleted.

On the other hand, the less known --force-with-lease flag checks if you have fetched the latest updates before you decide to rewrite history, avoiding problematic situations. If there are updates to the branch you are working on, and you didn’t fetch them, the --force-with-lease will make the push command fail.

Reset
For more information on git reset, check out the ‘Tell me why’ section in the Too Many (small) Commits scenario.

Rebase
The git rebase command is a powerful tool that can be used to reorder commits, edit commits, or even pick up entire branches and move them.

How Rebase Works
Let’s start with a fairly common use case for rebase:

Image of two branches with commits, one branch points to a parent commit 4 from the most recent commit on master set up for recursive merge

In the above image, we created a branch called test and did some work. The branch test is “based” on the first commit on master: e137e. While we were working on our test branch, some of our collaborators merged their work into master. If we want to merge in our test branch, git would need to recursively combine the history on the two branches. This recursive merge strategy would result in a new commit being made as you see below:

Image of same two branches but with new merge commit after recursive merge

Alternatively, you can use rebase to move the “base” of your test branch to the current tip of master:

Image of same branches, but if the feature branch had been rebased onto master instead of merged

As you can see from the diagram, git picked up the commits on our original test branch a55e, 97d6 and 1c70 and replayed the entire branch as if we had just created it from master. However, you should also notice the commits that occurred on the test branch have new SHA-1 hashes because the “base” commit for the branch has changed.

If we were to merge these two branches now, git would do a fast-forward merge, giving us a nice linear history (without the recursive merge commit).

Rebase Interactive
Rebase includes an interactive option that allows us to make changes to the commits as they are being replayed. For example, we can edit our commit messages as well as combine (squash), re-order, and even delete commits.


# Cherry-pick
Cherry-pick allows you to apply a single commit to another branch (or rescue it from your reflog).

How Cherry-pick Works
When you use git cherry-pick, git generates the difference between the commit you have designated and its parent commit (the one just before it) and then applies that diff wherever you are.

For example, let’s pretend you have a simple branch called new-branch.

Commits showing a master branch with a feature branch, the feature branch is four commits ahead and set up for a fast forward merge

You are generally unhappy with the way this feature is going, so you decide to cherry-pick the good parts and use them to try out a different idea. So you check out to better-branch and then cherry-pick 7f013 from new-branch.

Same branch as before, but now a new branch is created off of master

Now, 66a2e represents the same diff that was introduced in 7f013 on new-branch.

You aren’t limited to cherry-picking commits attached to a branch, you can also cherry-pick a commit from the reflog!

Same example as before, but now parent commit is one of the new commits on the first feature branch

In this example, we created 4 commits on new-branch, then did git reset --hard HEAD~3. The three commits with dashed lines are considered “unreachable” because they aren’t currently attached to a branch. So we cherry-picked 28144 to rescue that commit from the ashes.

Why Did the SHA-1 Change?
So, after you cherry-picked your commit you might have noticed that the SHA-1 associated with the commit is now different. That is because the SHA-1 doesn’t just identify the file (or files) that have been committed. It actually contains a lot of additional information like Date, Time, Author, and other information. So, even though you might have created a commit with the exact same file from before, you will have a completely new SHA-1 hash for the commit. Pretty cool, huh?

Revert
For more information about revert, check out the ‘Tell me why’ section in the Accidental Commit scenario.

Reset
For more information about reset, check out the ‘Tell me why’ section in the Too Many (small) Commits scenario.

What Happened to File 4?
When you were running the git reset --mixed SHA-1 you might have expected file4.md to be included in the files that got sent to the Working Directory. This is a very misconception when it comes to git reset, so don’t worry, you are not alone! When you run git reset, you are identifying the commit that you want to reset to.

For example, if you had wanted to include file4.md’s commit with the reset command, you would have needed to use the SHA-1 associated with the adding file 3 commit.
Continue


# Revert
The easiest way to think about revert is just making your repository do the exact opposite of an existing commit and creating a new commit to record that change. Revert is useful when trying to ‘undo’ the changes made in a specific commit, and even more useful if you pushed a change that your want to reverse to your remote since it will always create a new commit and leave the original commit untouched.

Reset
For more information on git reset, check out the ‘Tell me why’ section in the Too Many (small) Commits scenario.

Commit –amend
For more information on git commit --amend, check out the ‘Tell me why’ section in the Commit Message Sucks scenario.


# Reflog
Reflog is a more powerful version of git log, it records every commit HEAD has pointed to. HEAD is simply a pointer that represents the commit you are currently “checked out” to.

In most cases, you will be checked out to a branch, but you can also check out to any commit or tag in your history. When you are checked out to something other than a local branch, you are in what’s called a detached head state. This is also recorded in the reflog.

There are a few things that you should know about reflog, such as:

reflog is local only, so, your other collaborators are not going to be able to find files you deleted in their reflogs.
reflog only displays commits for a limited time:
30 days: ‘Unreachable’ objects, aka commits or modifications that were made to a branch that no longer exists.
90 days: ‘Reachable’ objects, aka commits or modifications that were made to a branch that still exists.
Reset
For more information about reset, check out the ‘Tell me why’ section in the Too Many (small) Commits scenario.

Cherry-pick
For more information about cherry-pick, check out the ‘Tell me why’ section in the Committed to the Wrong Branch! scenario.
