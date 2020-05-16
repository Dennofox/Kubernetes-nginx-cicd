#build the new image
docker build -t nginx-image .

#run a container with the new image (for testing purpose)
#docker run --name nginx-container-test -d -p 80:80 nginx-image
