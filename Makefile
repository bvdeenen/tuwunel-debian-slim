.PHONY: build push

docker=bvdeenen/tuwunel-debian-slim
build:
	docker build -t ${docker}:latest .
push:
	docker push ${docker}:latest
