# Git Hands-on Lab Commands

# Verify if master is in clean state
git status

# List all the available branches
git branch -a

# Pull the remote git repository to the master
git checkout master
git pull origin master

# Push the changes pending from the exercise
git add .
git commit -m "Completed Git-T03-HOL_002 hands-on lab"
git push origin master
