# membuat image dari Dockerfile
docker build -t item-app:v1 .

# menampilkan daftar image
docker image ls

# menargetkan image yg dibuat untuk upload ke docker hub 
docker tag item-app:v1 hilmatrix/item-app:v1

# login docker
echo $DOCKER_PASSWORD | docker login -u hilmatrix --password-stdin

# upload image yg dibuat
docker push hilmatrix/item-app:v1
