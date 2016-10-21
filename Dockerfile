FROM golang:onbuild

RUN mkdir -p /go/src/app
WORKDIR /go/src/app

COPY . /go/src/app

CMD ["go-wrapper", "run"]
