# concourse-ci-aws-nuke

![concourse-ci-nuke](https://user-images.githubusercontent.com/59869006/221508410-ca78dd45-9ed1-490d-a767-ef8817ce6cfd.png)

## Step 1: docker compose: To setup concourse-ci 

```bash
# to run the containers:
docker compose up -d

# to stop the containers:
docker compose down
```

Web-UI login: 

URL: https://localhost:8080

username: `test`

password: `test`

## Step 2: update vars.yml file with AWS CLI credentials

```yml
---
AWS_ACCESS_KEY: xxxxxxxxxxxxx
AWS_SECRET_ACCESS_KEY: xxxxxxxxxxxxx
# AWS_SESSION_TOKEN: xxxxxxxxxxxxx
```

## Step 3: Setup and trigger the pipeline

### run the following script
```bash
chmod +x run.sh
./run.sh
```

### OR manually trigger using the following commands

### step 1: login
```bash
fly -t tutorial login -c http://localhost:8080 -u test -p test
```
### step 2: creating the pipeline
```bash
fly -t tutorial set-pipeline -p aws-nuke -c approval.yml --load-vars-from vars.yml --non-interactive
```
### step 3: unpause the pipeline to trigger 
```bash
fly -t tutorial unpause-pipeline -p aws-nuke
```

