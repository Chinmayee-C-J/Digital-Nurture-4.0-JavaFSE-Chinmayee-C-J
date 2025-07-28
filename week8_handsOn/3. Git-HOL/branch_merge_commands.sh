# Git Branching and Merging Hands-On

# Step 1: Create a new branch
git checkout -b GitNewBranch

# Step 2: List all local and remote branches
git branch -a

# Step 3: Add files and commit to the new branch
echo "Some content for branching test" > branch_file.txt
git add branch_file.txt
git commit -m "Added file in GitNewBranch"

# Step 4: Check status
git status

# Step 5: Switch back to master/main
git checkout master

# Step 6: Check CLI differences
git diff master GitNewBranch

# Step 7: View differences using P4Merge (assuming it's configured)
git mergetool

# Step 8: Merge the branch into master
git merge GitNewBranch

# Step 9: View the log graph
git log --oneline --graph --decorate

# Step 10: Delete the branch
git branch -d GitNewBranch

# Step 11: Final status
git status
