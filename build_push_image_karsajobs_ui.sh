# Script Build & Push Docker Image (Frontend)
# Menggunakan GitHub Container Registry (GHCR)

IMAGE_NAME="ghcr.io/agummds/karsajobs-ui:latest"

echo "Building Docker image..."
docker build -t $IMAGE_NAME .

echo "Login to GHCR..."
echo $GHCR_TOKEN | docker login ghcr.io -u agummds --password-stdin

echo "Pushing image..."
docker push $IMAGE_NAME

echo "DONE!"