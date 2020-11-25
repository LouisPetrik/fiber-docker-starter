FROM golang:1.15.5-alpine3.12
RUN mkdir /app
ADD . /app
WORKDIR /app 
RUN go build -o main .
CMD ["go get -u github.com/gofiber/fiber/v2", "/app/main"]