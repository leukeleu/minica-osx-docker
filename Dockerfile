FROM golang:alpine
RUN apk add --no-cache git
RUN go get github.com/jsha/minica
WORKDIR /build
RUN GOOS=darwin GOARCH=amd64 go build -v github.com/jsha/minica
