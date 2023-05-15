#!/bin/bash

echo 'enter username'
read user
echo 'enter personal access token @ https://github.com/settings/tokens'
read PATclassic
echo 'enter repo name'
read reponame

mkdir ./$reponame
cd ./$reponame
echo $reponame >> README.md
git init
git add *
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/$user/$reponame.git
git remote set-url origin  https://$user:$PATclassic@github.com/$user/$reponame.git
git push -u origin main