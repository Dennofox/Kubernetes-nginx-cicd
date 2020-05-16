# This file tags and uploads an image to ECR

# Authenticate to ECR
aws ecr get-login-password --region eu-west-2 | docker login --username AWS --password-stdin 643968575852.dkr.ecr.eu-west-2.amazonaws.com

# Tag the new image
docker tag some-content-nginx:latest 643968575852.dkr.ecr.eu-west-2.amazonaws.com/udacity-captsone:latest

# Push the new image to ECR
docker push 643968575852.dkr.ecr.eu-west-2.amazonaws.com/udacity-captsone:latest