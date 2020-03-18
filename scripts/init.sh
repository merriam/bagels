#!/bin/bash 
cat << EOF
#
# init -- Initialize new project
#
mkdir ~/p/bagels
cd ~/p/bagels
con nodejs     # always have a conda environment
# Create first package.json
npm init       # use UNLICENSED for license
git init
echo "node_modules" >> .gitignore
# Create structure
mkdir scripts src public notes

# Create this file, really just copy it from somewhere
cp somewhere scripts/init.sh
chmod +x scripts/init.sh  

# Add init task to package.json to show this script
insert '    "init": "scripts/init.sh" into package.json/scripts'
# Commit everything as an initial commit
git add .
git commit -m "Initial commit"
# something like:
# [master (root-commit) 56b5612] Initial Commit
#  3 files changed, 40 insertions(+)
#  create mode 100644 .gitignore
#  create mode 100644 package.json
#  create mode 100644 scripts/init.sh

# You should now be able to see this file with "npm run init"

EOF
