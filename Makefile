.DEFAULT_GOAL := run-interactive

run-interactive:
	./run-interactive.sh

run:
	./run.sh

build-and-run:
	docker rm -f my-container 2>/dev/null || true
	docker build -t test . && docker run -d --name my-container test

exec:
	docker exec -it my-container bash
