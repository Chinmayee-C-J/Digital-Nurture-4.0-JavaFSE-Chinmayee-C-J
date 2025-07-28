# Git Ignore Hands-On Exercise Script

# Step 1: Initialize Git repository
git init

# Step 2: Create .log file and log folder
echo "This is a log file" > debug.log
mkdir log
echo "Inside log folder" > log/info.txt

# Step 3: Create .gitignore
echo "*.log" > .gitignore
echo "log/" >> .gitignore

# Step 4: Check git status
git status
