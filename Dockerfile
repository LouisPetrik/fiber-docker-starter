FROM golang:1.15.5 AS builder

RUN apt-get update
RUN apt-get upgrade -y

#ENV GOBIN /go/bin

RUN mkdir /app
ADD . /app
WORKDIR /app 
RUN go install 
RUN go build -o main .
CMD ["/app/main"]