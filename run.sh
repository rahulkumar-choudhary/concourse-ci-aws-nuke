#!/usr/bin/bash

# step 1: updpate vars.yml file with AWS CLI credentials

# step 2: login
fly -t tutorial login -c http://localhost:8080 -u test -p test

# step 3: creating the pipeline
fly -t tutorial set-pipeline -p aws-nuke -c approval.yml --load-vars-from vars.yml --non-interactive

# step 4: unpause the pipeline to trigger 
fly -t tutorial unpause-pipeline -p aws-nuke
