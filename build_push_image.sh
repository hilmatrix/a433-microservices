docker build -t item-app:v1 .
docker image ls
docker tag item-app:v1 hilmatrix/item-app:v1
echo $DOCKER_PASSWORD | docker login -u hilmatrix --password-stdin
docker push hilmatrix/item-app:v1
