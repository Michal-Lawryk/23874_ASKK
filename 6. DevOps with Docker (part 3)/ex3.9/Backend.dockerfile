FROM golang:1.22.11-alpine3.21 AS build-stage

WORKDIR /usr/src/app

COPY ./ ./

RUN go build -o server

FROM scratch

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/server /usr/src/app/server

CMD ["./server"]