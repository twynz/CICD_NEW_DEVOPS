#!/bin/bash
#update env repo
cd /home/ubuntu/CICD_New_Devops
git pull
#export env
set -o allexport
source env
set +o allexport
