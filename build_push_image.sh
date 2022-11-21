# membuat image dari Dockerfile
docker build -t item-app:v1 .

# menampilkan daftar image
docker image ls

# login docker
echo $DOCKER_PASSWORD | docker login -u hilmatrix --password-stdin

# login github 
echo $GITHUB_TOKEN | docker login ghcr.io -u hilmatrix --password-stdin

# menargetkan image yg dibuat untuk di-upload ke docker hub
docker tag item-app:v1 hilmatrix/item-app:v1
docker push hilmatrix/item-app:v1

# menargetkan image yg dibuat untuk upload ke ghcr.io
# image ini nanti yang dipakai lewat docker-compose.yml
docker tag item-app:v1 ghcr.io/hilmatrix/item-app:v1
docker push ghcr.io/hilmatrix/item-app:v1
