# This file get the latest release and deploys it (rolling deployment)

/usr/bin/kubectl set image deployments/nginx-deployment nginx=643968575852.dkr.ecr.eu-west-2.amazonaws.com/udacity-captsone:latest
