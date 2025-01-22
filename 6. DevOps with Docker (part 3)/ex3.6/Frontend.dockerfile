FROM ubuntu:latest

WORKDIR /usr/src/app

COPY ./ ./ 

RUN apt-get update \
    && apt-get install -y curl \
    && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs \
    && npm install \
    && REACT_APP_BACKEND_URL=http://localhost:8080 npm run build \
    && npm install -g serve \
    && useradd -m appuser

USER appuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]