#!/bin/bash

# Log in to Docker Hub
echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" --password-stdin

# Tag Docker images
docker tag patient-record-service:latest $DOCKER_USERNAME/patient-record-service:latest
docker tag appointment-scheduling-service:latest $DOCKER_USERNAME/appointment-scheduling-service:latest
docker tag notification-service:latest $DOCKER_USERNAME/notification-service:latest
docker tag aggregator-service:latest $DOCKER_USERNAME/aggregator-service:latest

# Push Docker images to Docker Hub
docker push $DOCKER_USERNAME/patient-record-service:latest
docker push $DOCKER_USERNAME/appointment-scheduling-service:latest
docker push $DOCKER_USERNAME/notification-service:latest
docker push $DOCKER_USERNAME/aggregator-service:latest

echo "Docker images pushed successfully!"
