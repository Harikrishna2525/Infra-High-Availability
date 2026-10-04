#!/bin/bash

apt-get update -y
apt-get install -y docker.io nginx 

systemctl enable --now docker

# Pull the application image
docker pull harikrishdocker25/test-app:latest

# Remove an existing container if present
docker rm -f app-container || true

# Run the app on port 3000
docker run -d \
  --name app-container \
  --restart unless-stopped \
  -p 3000:3000 \
  harikrishdocker25/test-app:latest

# Wait briefly and inspect startup
sleep 5
docker ps
docker logs --tail 50 app-container
