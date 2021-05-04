#!/bin/sh -x

#grep "actions/setup-python" ci-mary-j-jenkins.yml
#if [ $? -eq 0 ] ; then  
# set ACTION_PI_SETUP_RST = true 
#fi

git push --set-upstream origin $1 
git add .
git commit -m "$2" 
git push 
