#!/bin/bash

# Customize this script with your own test commands
# This will run inside the Docker container

set -e

echo "=========================================="
echo "Running custom test script"
echo "=========================================="

# Your custom commands here:
git clone https://github.com/ssp-data/cloud-cost-analyzer.git
cd cloud-cost-analyzer
make demo

# You can add more commands:
# python main.py
# pytest
# npm test
# etc.

echo "=========================================="
echo "Test completed!"
echo "=========================================="
