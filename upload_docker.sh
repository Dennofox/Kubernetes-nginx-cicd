# This file tags and uploads an image to ECR

# Authenticate to ECR
/usr/local/bin/aws ecr get-login-password --region eu-west-2 | docker login --username AWS --password-stdin 643968575852.dkr.ecr.eu-west-2.amazonaws.com

# Create Tag for new version
Tag=$(date +"%m-%d-%y-%H-%M-%s")
export Tag

# Tag the new image
docker tag nginx-image:latest 643968575852.dkr.ecr.eu-west-2.amazonaws.com/udacity-captsone:$Tag

# Push the new image to ECR
docker push 643968575852.dkr.ecr.eu-west-2.amazonaws.com/udacity-captsone:$Tag
