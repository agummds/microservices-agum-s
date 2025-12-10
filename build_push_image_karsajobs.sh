# Script Build & Push Docker Image (Backend)
# Menggunakan GitHub Container Registry (GHCR)


# Nama image yang akan dibuat
IMAGE_NAME="ghcr.io/agummds/karsajobs:latest"

# Build Docker image dari Dockerfile
echo "Building Docker image..."
docker build -t $IMAGE_NAME .

# Login ke GitHub Packages (GHCR)
# Gunakan GitHub Personal Access Token atau GitHub Actions token
echo "Login to GHCR..."
echo $GHCR_TOKEN | docker login ghcr.io -u agummds --password-stdin

# Push image ke GitHub Container Registry
echo "Pushing image..."
docker push $IMAGE_NAME

echo "DONE!"