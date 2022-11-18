#!/bin/bash
echo "---installing oclif---"

oclifVersion="3.2.27"
sudo npm install -g oclif@$oclifVersion
npm i --save-dev @types/inquirer
echo "---oclif done---"
