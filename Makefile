all: build

build:
	docker build -t include/hello .

run:
	docker run -it --rm -p 8080:8080 include/hello
