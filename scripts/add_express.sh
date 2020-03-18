#!/bin/bash 
cat << EOF

# First, install node
npm install express

# Second, install a smoke-test program
create src/expressHello.js  // based on https://www.guru99.com/node-js-express.html

    import express from 'express';
    const app = express();
    app.get('/', (req, res) => res.send("Hello to the browser!"));
    const server = app.listen(3000, ()=> 0);

# Third, fix the environment
node --version 
   # This should be about 13, e.g., "v13.11.0".  
   # Anaconda usually has troubles install ancient versions of node
   # If so, I uninstalled, and made homebrew do the update:
   conda uninstall nodejs
   coff
   conda uninstall nodejs   # uninstall from the 'core' conda as well
   con nodejs

# Tell node that .js files are modules instead of CommonJS packages
insert '    "type": "module"' into top level package.json

# Fourth, run the command and open the browser to port 3000
# here is a cute way to do both...
(sleep 2 && open http://localhost:3000)& node src/expressHello.js

You should see "Hello to the browser!"

# Last, add npm scripts
Add to package.json.scripts:      
    "addexpress": "scripts/add_express.sh",
    "expressHello": "(sleep 2 && open http://localhost:3000)& node src/expressHello.js"

EOF
