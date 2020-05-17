# Kubernetes-nginx-cicd

This is my submission for the capstone project of Udacity Cloud Devops Course.

It includes :

- Setup : a folder containing the commands used to setup a Kubernetes cluster using Amazon EKS. It was done via eksctl as it is authorized. It also contains the parameter files used to create a Kubernetes deployment and service.
- Dockerfile : a file to create a Docker image of a basic nginx server displaying a simple HTML page
- run_docker.sh : a shell script to build the Docker image
- upload_docker.sh : a shell script to upload the newly created image to Amazon container registry (ECR)
- run_kubernetes.sh : a shell script to update the Kubernetes deployment with the new image in a rolling update
- Jenkinsfile : a file describing the describing the CICD pipeline launched to automatically lint the code and then build, upload and deploy new images
