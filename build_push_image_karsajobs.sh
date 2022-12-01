# membuat image karsajobs backend dari Dockerfile
docker build -t karsajobs:latest .

# menampilkan daftar image
docker image ls

# login github 
echo $GITHUB_TOKEN | docker login ghcr.io -u hilmatrix --password-stdin

# menargetkan image backend yg dibuat untuk upload ke ghcr.io
docker tag karsajobs:latest ghcr.io/hilmatrix/karsajobs:latest
docker push ghcr.io/hilmatrix/karsajobs:latest
