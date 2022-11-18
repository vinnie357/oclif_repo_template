#!/bin/bash
# install tools for container standup
echo "cwd: $(pwd)"
echo "---getting tools---"
sudo apt-get update
sudo apt-get install -y jq less
. .devcontainer/scripts/preCommit.sh
. .devcontainer/scripts/oclif.sh
echo "---tools done---"

#pre-commit
#node
#oclif
#npm
#npx
#eslint
#prettier
#typescript
#typescript-eslint
