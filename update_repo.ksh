#!/bin/bash -x

grep "actions/setup-python" ci-mary-j-jenkins.yml
if (( $? == 0 )) ; then  
 set ACTION_PI_SETUP_RST = true 
else
 set ACTION_PI_SETUP_RST = false 
fi
echo $ACTION_PI_SETUP_RST

git push --set-upstream origin $1 
git add .
git commit -m "$2" 
git push 
