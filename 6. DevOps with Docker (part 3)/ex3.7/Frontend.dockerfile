FROM node:16.20.2-alpine3.18

WORKDIR /usr/src/app

COPY ./ ./ 

RUN npm install \
    && REACT_APP_BACKEND_URL=http://localhost:8080 npm run build \
    && npm install -g serve \
    && adduser -D appuser

USER appuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]