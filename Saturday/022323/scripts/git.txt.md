# What is Git:
- Git is a version control system
- Git helps you keep track of code changes
- Git is used to collaborate on code
- Git and GitHub are different things

# Why Git:
- Over 70% of developers use Git
- Developers can work together from anywhere in the world
- Developers can see the full history of the project
- Developers can revert to earlier versions of a project

# Features of Git:
- When a file is changed, added or delete, it is considered modified
- You select the modified files you want to `Stage`
- The Staged files are `Committed`, which prompts Git to store a permanent snapshot of the files
- Git allows you to see the full history of every commit
- You can revert back to any previous commit
- Git does not store a separate copy of every file in every commit, but keeps track of changes made in each commit

# What is GitHub:
- Git is not the same as GitHub
- GitHub makes tools that use Git
- GitHub is the largest host of source code in the world, and has been owned by Miscrosoft

## Configuring git for the first time:
- git config --global user.name "Enter your username"
- git config --global user.email "Enter your email"

## Initializing Git
- git init 
    - Git now know that it should watch the folder you initialized it on. Git creates a hidden folder to keep track of changes

## Staging/Adding files to Git repo
- Staged files are files that are ready to be committed to the repository you are working on
- When you first add files to an empty repository, they are all untracked. To get Git to track them, you need to stage them or add them to the staging environment

git add <file_name>

### staging all files in a folder 
- git add --all
- git add -A 

### Making a Commit 
- Adding commits keep track of our progress and changes as we work. Git considers each commit change point or 
`save point`. It is a point in the project you can go back to if you find a bug or want to make a change.
- when we commit, we should always include a message 

- git commit -m " Enter your message"

### Git commit without Stage:
- Sometimes, when you make small changes, using the staging environments seems like a waste of time. It is possible to commit changes directly, skipping the stagging environment

- git commit -a -m "Enter your message here"


### Status of files and log
- git status


#### File status in a more compact way
- git status --short 

#### Log of a file
- Log is used to view the history of commits for a repo

- git log
- git log --oneline 

# Git Help 
- if you are having trouble remembering commands or options for commands, you can use Git help

#### See all the available options foor the specific command
- git <command> -help  ex: git add -help

#### See all possible comamnds
- git help --all 

# Git Branching 
- In Git, a branch is a new/separate version of the main repository. 
- Branches allow you to work on a different parts of a project without impacting the main branch. When the work 
is complete, a branch can be merged(joined) with the main project.
- We can even switch between branches and work on different projects without them interfering with each other.

### Making a new Git branch 
- git branch <name of the branch>

### Checkig all the branches
- git branch        --> local only 
- git branch -a     --> local and remote 
- git branch -r     --> remote only


### Switching to other BRanches
- git checkout <branch name>


### Making a new branch and directly switching to it:
- git checkout -b <branch name>

### Deleting a Branch 
- git barnch -d <branch name>


### Merging two Branches
It's preferred to change/switch to master/main branch before ant branch needs to be medged with it.
- git merge <branch name>       --> This will merge the specified branch with out master/main branch 


# Working with GitHub
- Create a github account to create your remote repositories. Now, create a new repo where we will be uploading 
our files from local repo.

NOTE: Local repository means the repo which is on our system (mac, window) whereas, remote repo, means the one
is on other remote system/server. For instance, it is a Github in our case.

# What are the remote Git Hosters:
- GitHub
- Bitbucket, (legacy: Stash)
- Gitlab
- Azure Repo


# Pull a repo from remote to local
- git clone is used to copy/clone the repo
- git pull, is used to pull all the changes from a remote repo into the local barnch we are working on. 
It is a combination of fetch and merge. Use it to update your local Git.

- git pull
- git pull origin 

# Push local  repo to remo (GitHub)
- gitt remote add origin <pasthe copied URL here>
    - specified that we are adding a remote repository, with a speficied URL, as an origin to our local Git repo
- git push --set-upstream origin master 
    - Pushing our master branch to the origin URL and set it as teh default remote branch 

 Go back to GitHub and see that the repository has been updated.

 
## Pushing local repo to github after doing the above process
- git push origin


## Push branch to GitHub 
- git checkout -b <branch_name>
- git status
- git commit -m "Commit message"
- git push origin <branch_name>

# Git clone from GitHUb
- git clone <remote url>                        --> clone everything 
- git clone <remote url> <folfer_name>          --> To speficy a specific folder to clone to 


# Git Undo

## Git revert:
- `revert`: is the command we use when we want to take a previous commit and add it as a new commit, keeping the log intact. First thing, we need to find a piont we want to return. To do that, we need to go through the log. To avoid the very long log list, use the `--oneline` option which gives just one line per commkt showing

    1. The first seven character of the commit hash 
    2. The commit message

## Git revert HEAD
- when revert the last commit using `git revert HAED` (revert the last change, and then commit).By adding the option `--no-edit`, we can skip the commit message editor

- git revert HEAD --no-edit

To revert to earlier commit:
- git revert HEAD~5 

## Git reset 
- `reset`:  is the command we use when we want to move the repository back to a previous commit. discarding any changes made after that commit. First, get the seven character of the commit hash for the git log for the commit that you want to go back for. Then we reset our repository back to that specified commit using `git reset commithash` 

- git reset <cimmit_hash>

## Git amend
- `commit --amend`: is used to modify the most recent commit. It combines changes in the staging environment with the latest commit, and creates a new commit. The new commit eplaces the latest commit entirely. 

One of th esimpliest things you can do with `--amend` is to change a commit message
    - Uisng this, the previous commit is replaced with our amended one.

## Git Amend Files
- Adding files with `--amend` works the same way as above. Just add them to the staging environment before committing.
