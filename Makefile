.PHONY: build push


docker=bvdeenen/tuwunel-debian-slim
tag=1.0.2
build:
	docker build -t ${docker}:${tag} .
push:
	docker push ${docker}:${tag}
