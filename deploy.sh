#!/usr/bin/env bash

# abort on errors
set -e

# build
BASEDIR=$(dirname "$0")
rm -rf $BASEDIR/dist
rm -rf $BASEDIR/tmp
mkdir -p tmp
for f in */*_apostila.pdf; do cp -f -t "$BASEDIR/tmp" "$f"; done
git clone -b pdfs git@github.com:nenitf/apostilas.git dist
for f in tmp/*_apostila.pdf; do cp -f -t "$BASEDIR/dist/" "$f"; done

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy :octocat:'

# if you are deploying to https://<USERNAME>.github.io
git push -f origin pdfs

cd -
