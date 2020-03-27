#!/bin/bash
cat << EOF
# Add Script
These directions are for adding a script to your scripts directory and
into your existing 'package.json' file.  This allows you to 'npm run myscript'
to run the steps, or at least check if they exist.

# Step 0:  Preparation
verify your project root has package.json
verify your project root has a scripts/ directory

# Step 1:  Add the script to package.json with a name like 'myscript'
note that the script files use lower_case_with_underscores while commands use lowercasewithoutunderscores.
Copy file my_script.sh into scripts
chmod +x scripts/my_script.sh
Add '"myscript": "scripts/my_script.sh",' to package.json tasks

# Step 2: Verify your script works:
From your home:
npm run myscript
EOF