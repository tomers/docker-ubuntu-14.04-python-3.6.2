.DEFAULT: build

build: Dockerfile
	docker build -t tomersha/ubuntu-14.04-python-3.6.2 .

