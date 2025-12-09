# Build Docker image untuk aplikasi
docker build -t item-app:v1 .

# Melihat daftar image lokal
docker images

# Mengubah nama image agar sesuai format GitHub Packages
# Format: ghcr.io/<username>/<image>:<tag>
docker tag item-app:v1 ghcr.io/agummds/item-app:v1

# Login ke GitHub Container Registry
echo $GHCR_TOKEN | docker login ghcr.io -u agummds --password-stdin

# Push image ke GitHub Packages
docker push ghcr.io/agummds/item-app:v1
