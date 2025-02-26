FROM golang:1.16

WORKDIR /usr/src/app

COPY ./ ./

RUN go build -o server

ENV PORT=8080

ENV REQUEST_ORIGIN=http://localhost:5000

EXPOSE 8080

CMD ["./server"]