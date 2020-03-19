#!/bin/bash
cat << EOF

1.  Create a lint trap to see errors in action.
    Create or copy src/lintTrap.js.
    Check that no errors or warnings are shown in lower-right of code.  If
    you have errors (a non-zero number right ofthe x in a circle), then you have some sort of linter already.

2.  Add ESLint to VS  Code
    Go to far left gray 'extensions' icon (near bottom).  Add "ESLint".
    There are different linters; ESLint is the best.   See
    (https://codeburst.io/javascript-linting-tools-comparison-ebcb4aa23c49)
    for a comparison.

3.  Add ESLint locally and create your .eslintrc.json file.
    npm install --savedev eslint
    ./node_modules/.bin/eslint --version
    # should be v6.8.0 or higher

    ./node_modules/.bin/eslint --init
    # You should get these interactive prompts.  You can change them later.
    ? How would you like to use ESLint? To check syntax, find problems, and enforce code style
    ? What type of modules does your project use? JavaScript modules (import/export)  # Really, dump old 'require' and CommonJS
    ? Which framework does your project use? None of these  # project specific
    ? Does your project use TypeScript? No   # project specific
    ? Where does your code run? Node   # project specific

    ? How would you like to define a style for your project? Use a popular style guide
    ? Which style guide do you want to follow? Airbnb: https://github.com/airbnb/javascript
        # Use the Airbnb guide, like everyone does.  The differences among guides are trivial.
    ? What format do you want your config file to be in? JSON
    # this will download eslint-config-airbnb-base and other packages.

4.  Confirm your lint_trap.js now has dozens of warnings.
EOF
