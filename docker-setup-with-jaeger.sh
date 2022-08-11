#!/bin/bash
set -e

echo "Building animal-name-service docker image - jaeger..."
cd animal-name-service
./mvnw clean install
docker build -t com.example/animal-name-service:0.1.0 Dockerfile_Jaeger .
echo "Built animal-name-service docker image - jaeger..."

echo "Building name-generator-service docker image - jaeger..."
cd ../name-generator-service
./mvnw clean install
docker build -t com.example/name-generator-service:0.1.0 Dockerfile_Jaeger .
echo "Built name-generator-service docker image - jaeger..."

echo "Building scientist-name-service docker image - jaeger..."
cd ../scientist-name-service
./mvnw clean install
docker build -t com.example/scientist-name-service:0.1.0 Dockerfile_Jaeger .
echo "Built scientist-name-servicedocker image - jaeger..."


cd ../
echo "Running docker-compose up..."
docker-compose -f docker-compose-with-jaeger.yml up -d
echo "Done docker-compose up..."

echo "Cleaning previous docker images..."
docker image prune -f
echo "Cleaned previous docker images..."