#!/bin/bash
set -e

echo "Building animal-name-service docker image - Zipkin..."
cd animal-name-service
./mvnw clean install
docker build -t com.example/animal-name-service:0.1.0 -f Dockerfile_Zipkin .
echo "Built animal-name-service docker image - Zipkin..."

echo "Building name-generator-service docker image - Zipkin..."
cd ../name-generator-service
./mvnw clean install
docker build -t com.example/name-generator-service:0.1.0 -f Dockerfile_Zipkin .
echo "Built name-generator-service docker image - Zipkin..."

echo "Building scientist-name-service docker image - Zipkin..."
cd ../scientist-name-service
./mvnw clean install
docker build -t com.example/scientist-name-service:0.1.0 -f Dockerfile_Zipkin .
echo "Built scientist-name-servicedocker image - Zipkin..."


cd ../
echo "Running docker-compose up..."
docker-compose -f docker-compose-with-zipkin.yml up -d
echo "Done docker-compose up..."

echo "Cleaning previous docker images..."
docker image prune -f
docker container prune -f
echo "Cleaned previous docker images..."