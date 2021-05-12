#!/bin/bash 

#exit
git push --set-upstream origin $1 
git add .
git commit -m "$2" 
git push 
