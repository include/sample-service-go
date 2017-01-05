all: prebuild build

prebuild:
	echo "fetch deps..."

build: VERSION?=latest
build:
	docker build -t include/sample-service-go:$(VERSION) .

run:
	docker run -it --rm -p 8080:8080 include/sample-service-go

test:
	echo "ok"

clean:
	docker rmi -f $(shell docker images include/sample-service-go -aq)
