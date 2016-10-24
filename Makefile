all: prebuild build

prebuild:
	echo "fetch deps..."

build:
	docker build -t include/sample-service-go .

run:
	docker run -it --rm -p 8080:8080 include/sample-service-go

test:
	echo "ok"

clean:
	docker rmi -f $(shell docker images include/sample-service-go -aq)
