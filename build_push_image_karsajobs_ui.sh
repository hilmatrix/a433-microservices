# membuat image karsajobs frontend dari Dockerfile
docker build -t karsajobs-ui:latest .

# menampilkan daftar image
docker image ls

# login github 
echo $GITHUB_TOKEN | docker login ghcr.io -u hilmatrix --password-stdin

# menargetkan image frontend yg dibuat untuk upload ke ghcr.io
docker tag karsajobs-ui:latest ghcr.io/hilmatrix/karsajobs-ui:latest
docker push ghcr.io/hilmatrix/karsajobs-ui:latest
