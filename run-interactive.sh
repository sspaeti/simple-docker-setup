#!/bin/bash

# Docker Test Runner - Interactive Mode
# Runs test.sh and then drops you into an interactive shell

set -e

echo "Building Docker image..."
docker build -t repo-tester .

echo ""
echo "Running test.sh inside Docker container..."
echo "After test.sh completes, you'll get an interactive shell."
echo ""

docker run -it --rm \
    -v "$(pwd)/test.sh:/workspace/test.sh:ro" \
    repo-tester \
    bash -c "bash /workspace/test.sh && echo '' && echo 'Test completed. Dropping to interactive shell...' && echo 'Type exit to quit.' && exec bash"
