all: build

build:
	docker build -t include/sample-service-go .

run:
	docker run -it --rm -p 8080:8080 include/sample-service-go

clean:
	docker rmi $(shell docker images include/sample-service-go -aq)
