#!/bin/bash
#update env repo
cd /home/ubuntu/CICD_New_Devops
git pull
#export env
set -o allexport
source /home/ubuntu/CICD_New_Devops/auth_jenkins/env
set +o allexport
