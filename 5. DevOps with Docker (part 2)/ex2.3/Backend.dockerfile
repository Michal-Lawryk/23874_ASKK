FROM golang:1.16

WORKDIR /usr/src/app

COPY ./ ./

RUN go build -o server

CMD ["./server"]