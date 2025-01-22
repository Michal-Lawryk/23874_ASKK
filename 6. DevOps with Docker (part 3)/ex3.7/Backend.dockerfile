FROM golang:1.22.11-alpine3.21

WORKDIR /usr/src/app

COPY ./ ./

RUN go build -o server \
    && adduser -D appuser

USER appuser

CMD ["./server"]