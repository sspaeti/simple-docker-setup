# Docker Testing Setup

A simple Docker-based testing environment for running and validating external repositories in isolated containers. The setup provides a clean Ubuntu 24.04 environment with essential development tools including git, Python, and the uv package manager.

Customize `test.sh` with your own test commands, then run `make run-interactive` to build the Docker image, execute your tests, and drop into an interactive shell for debugging. Use `make run` if you just want to run tests and exit.

Perfect for testing repositories in a reproducible environment without cluttering your local system.
