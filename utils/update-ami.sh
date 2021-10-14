#!/bin/bash
cd /home/ec2-user/incentive-program
git checkout main
git stash
git pull
git stash apply