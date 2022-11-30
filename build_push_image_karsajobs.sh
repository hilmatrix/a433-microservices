# membuat image karsajobs backend dari Dockerfile
docker build -t karsajobs:latest .

# menampilkan daftar image
docker image ls

# login github 
echo $GITHUB_TOKEN | docker login ghcr.io -u hilmatrix --password-stdin

# menargetkan image yg dibuat untuk upload ke ghcr.io
# image ini nanti yang dipakai lewat docker-compose.yml
docker tag karsajobs:latest ghcr.io/hilmatrix/karsajobs:latest
docker push ghcr.io/hilmatrix/karsajobs:latest
