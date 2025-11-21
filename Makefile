.DEFAULT_GOAL := run-interactive

run-interactive:
	./run-interactive.sh

run:
	./run.sh

build-and-run:
	docker build -t test . && docker run -d --name my-container test

