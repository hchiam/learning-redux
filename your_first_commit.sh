#!/bin/bash

# (will prompt for password)
curl -u 'hchiam' https://api.github.com/user/repos -d '{"name":"learning-redux", "description":""}'
git remote add origin 'git@github.com:hchiam/learning-redux.git'
git add .
git commit -m "Set up repo"
git remote set-url origin https://github.com/hchiam/learning-redux.git
git push --set-upstream origin master
echo; echo -------; echo;
git status
