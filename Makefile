all: run

ARCH=$(shell uname -m)

build:
	docker build -t staticfloat/libuv_inotify_test:$(ARCH) -f Dockerfile.$(ARCH) .

push:
	docker push -t staticfloat/libuv_inotify_test:$(ARCH)

run: build
	docker run -ti staticfloat/libuv_inotify_test:$(ARCH)
