#!/bin/bash 

#############################################
# Author: D-cyberguy
# Date: 06/01/23
#
# This script will check if we have a valid sso login, if not, it would start a new sign-in session
#############################################
echo "Please enter your profile name: "
read user_profile

function ssoLoginCheck () {
  aws sts get-caller-identity --profile "$user_profile" &> /dev/null
  # $? is the exit code of the last statement
  if [ "$?" == 0 ]; then
      # auth is valid
      echo "your sso token is valid, continuing"
  else
    if [ -t 1 ] ; then
      echo "Found that this is an interactive terminal, will run the sso login"
      # auth needs refresh
      aws sso login --profile "$user_profile"
      if [ "$?" != 0 ]; then
        echo "You didnt login, exiting!"
        exit 1; 
      fi
    else
      # is cron
      echo "Not in a tty, gracefully exiting due to no active SSO login. Check that your logged in via SSO, or have perms via IAM already setup";
      exit 1;
    fi
  fi
}
ssoLoginCheck;
