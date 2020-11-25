FROM golang:1.15.5 AS builder

RUN apt-get update
RUN apt-get upgrade -y

ENV GOBIN /go/bin

RUN mkdir /app
ADD . /app
RUN go mod init fiber-starter
RUN go get -u github.com/gofiber/fiber/v2
WORKDIR /app 
RUN go build -o main .
CMD ["/app/main"]