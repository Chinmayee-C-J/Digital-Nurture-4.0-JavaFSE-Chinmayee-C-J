# Git Conflict Resolution Hands-On

# Step 1: Ensure master is in clean state
git checkout master
git status

# Step 2: Create a branch and add hello.xml
git checkout -b GitWork
echo "<message>Hello from branch</message>" > hello.xml
git add hello.xml
git commit -m "Add hello.xml in GitWork"

# Step 3: Switch back to master and create conflicting hello.xml
git checkout master
echo "<message>Hello from master</message>" > hello.xml
git add hello.xml
git commit -m "Add conflicting hello.xml in master"

# Step 4: View log
git log --oneline --graph --decorate --all

# Step 5: View differences
git diff GitWork

# Optional: Use P4Merge tool
git mergetool

# Step 6: Merge GitWork into master (conflict expected)
git merge GitWork

# Step 7: Resolve conflict manually or with 3-way tool
# Simulated resolution
echo "<message>Conflict resolved message</message>" > hello.xml
git add hello.xml
git commit -m "Resolved conflict in hello.xml"

# Step 8: Ignore backup files
echo "*.*~" >> .gitignore
git add .gitignore
git commit -m "Added backup pattern to .gitignore"

# Step 9: Delete the merged branch
git branch -d GitWork

# Step 10: View final log
git log --oneline --graph --decorate
