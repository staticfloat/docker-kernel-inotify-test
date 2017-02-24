build:
	docker build -t staticfloat/libuv_inotify_test .

push:
	docker push -t staticfloat/libuv_inotify_test
