#!/bin/bash

# Docker Test Runner
# Builds the Docker image and runs test.sh inside it

set -e

echo "Building Docker image..."
docker build -t repo-tester .

echo ""
echo "Running test.sh inside Docker container..."
echo ""

docker run -it --rm \
    -v "$(pwd)/test.sh:/workspace/test.sh:ro" \
    repo-tester \
    bash /workspace/test.sh
