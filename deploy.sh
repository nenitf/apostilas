#!/usr/bin/env bash

# abort on errors
set -e

# build
BASEDIR=$(dirname "$0")
rm -rf $BASEDIR/dist
mkdir $BASEDIR/dist
for f in */*_apostila.pdf; do cp -t ./dist "$f"; done

# navigate into the build output directory
cd dist

echo '# apostilas em pdf' > README.md

git init
git add -A
git commit -m 'deploy :octocat:'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:nenitf/apostilas.git master:pdfs

cd -
