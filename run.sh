#!/usr/bin/env bash

set -e

cd linked-module
yarn
yarn link

cd ../source-module
yarn link module-alias-issue-37-linked-module

echo
echo "Should print something:"
node index.js
