
# Step 1: Git Configuration
git --version
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
git config --list

# Step 2: Configure Notepad++ as default editor
alias np='"/c/Program Files/Notepad++/notepad++.exe"'
git config --global core.editor "notepad++"

# Step 3: Initialize Git Repository and Add File
mkdir GitDemo
cd GitDemo
git init
echo "Welcome to Git hands-on lab!" > welcome.txt
cat welcome.txt
git status
git add welcome.txt
git commit
git status

# Remote setup and push (assuming repo already created on GitLab)
git remote add origin https://gitlab.com/yourusername/GitDemo.git
git pull origin master
git push origin master
