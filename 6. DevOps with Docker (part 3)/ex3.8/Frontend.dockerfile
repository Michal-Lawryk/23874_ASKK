FROM node:16.20.2-alpine AS builder

WORKDIR /usr/src/app

COPY ./ ./ 

RUN npm install \
    && REACT_APP_BACKEND_URL=http://localhost:8080 npm run build \
    && npm install -g serve

FROM node:16.20.2-alpine

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/build /usr/src/app/build

RUN adduser -D appuser
USER appuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]