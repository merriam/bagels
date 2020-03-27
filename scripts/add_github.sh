#!/bin/bash
cat << EOF
# Step 1:  Add GitHub repo
  Got to your github page,
  click '+' in the upper right, choose 'New Repository'
  Pick a name, add an optional description.  Don't add a README or .gitignore.  Hit Create Repository
  Copy the ssh url, it should match "git@github.com:<username>:<repo_name>"

# Step 2:  Add to your ~/.git/config
The .git directory usually isn't under source control.
There are ways to do this with the 'git add' command, but they do screw things up
# Add these targets after the [core] section (update the url to the one you copied):
    [remote "origin"]
        url = git@github.com:merriam/bagels
        fetch = +refs/heads/*:refs/remotes/origin/*
    [branch "master"]
        remote = origin
        merge = refs/heads/master

# Step 3:  push & check
Use the "circle of arrows" icon on the bottom left of visual code, or use "git push origin" on the command line.
Check your github page and verify you have content.

# Step 4:  Add this script to package.json
script name is add_github.sh, for command addgithub
EOF
scripts/add_script.sh | sed 's/.*/\|   &/'