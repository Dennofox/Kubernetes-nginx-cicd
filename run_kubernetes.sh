# This file get the latest release and deploys it (rolling deployment)

kubectl -v 8 set image deployments/nginx-deployment nginx=643968575852.dkr.ecr.eu-west-2.amazonaws.com/udacity-captsone:latest
