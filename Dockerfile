FROM golang:1.22.3

RUN apt update && apt install nano -y
# Make sure the pkg/config/config.yml file has been completed
COPY . src/

WORKDIR /go/src

RUN go mod tidy

RUN go build
