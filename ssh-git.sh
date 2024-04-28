#!/bin/bash

#Git set up via ssh
cat << EOF | tee ~/.ssh/config 
Host github.com                               
  Hostname github.com
  User git
  PreferredAuthentications publickey
  IdentitiesOnly yes
  IdentityFile ~/.ssh/id_git
  StrictHostKeyChecking no
EOF

#Authenticate
ssh -T github.com
