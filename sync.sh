#!/bin/bash

mkdir ~/.ssh/
echo $PLUGIN_SSH_KEY | base64 -d > ~/.ssh/key
chmod -R 700 ~/.ssh/
echo -e "Host *\n  IdentityFile ~/.ssh/key\n  StrictHostKeyChecking no" > ~/.ssh/config

eval `ssh-agent`
ssh-add ~/.ssh/key

mkdir /sync
cd /sync
git clone --mirror $PLUGIN_REPO_FROM from.git
cd from.git
git remote add --mirror=fetch to $PLUGIN_REPO_TO
git fetch origin
git push $PLUGIN_PUSH_ARG to --all
