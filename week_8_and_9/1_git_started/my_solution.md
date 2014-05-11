## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
'git add' is like a staging ground and puts the file you're working on in the position to be commited (or saved) into the repository. You
cannot commit a file without adding it first.

#### branch
'git branch' creates a copy of current file for you to make changes to which will be merged with the master branch later

#### checkout
'git checkout' resets the repo to that way it was at the given commit. You can also use this command to switch between branches

#### clone
'git clone' clones, or copies either a file or folder of files onto your local machine so you can start making changes

#### commit
'git commit' saves a version of the file you're working on into the repo. It's always good to add a specific commit message to tell whomever what changes were made with this commit

#### fetch
'git fetch' fetches remote changes made to the repo

#### log
'git log' shows all the commits to the repository you are working in

#### merge
'git merge' takes changes from a different branch and merges them into the master

#### pull
'git pull' updates your local repo to the newest commit

#### push
'git push' moves your file to a cloud space (like GitHub) for other to view/contribute. Until you push, all of your files will be on your local machine only.

#### reset
'git reset' unstages the file specified from the next commit

#### rm
'git rm' removes files from the disk and stages their removal for the next commit. BE CAREFUL HERE!!!

#### status
'git status' indicates what changes have been made to the repo you are working in and also indicates what branch you are in.

## Release 3: Git Workflow

- Push files to a remote repository
	
	1) assuming we're using GitHub, use 'git clone' to clone the repo on your local machine
	2) make whatever changes you need to make
	3) save the file using 'git commit' with a brief and specific message as to what changes were made
	4) use 'git push <repo address>' to put your changes into the remote repo


- Fetch changes
	
	1) use 'git fetch <repo>' to retrieve all changes made to remote repo
	2) 'git merge <repo>/<master>' to put changes into local repo
	3) 'git push <origin>/<master>' to see changes on GitHub

- Commit locally

	1) 'git init' to initialize folder as a git repo
	2) 'git add' to add files to staging area
	3) 'git commit' to save versions locally


### REFLECTION	

This helped. I recognized all these terms, and I probably could define a few of them with coplete confidence before I went through the Code School tutorial. I know git will become a second language to me, but it's still a confusing thing, and this was a great exercise for me to do. I believe I'm pretty close with the workflows, but I also know these will be evolving as I learn more.