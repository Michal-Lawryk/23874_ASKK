FROM ubuntu:latest

WORKDIR /usr/src/app

COPY ./src ./src
COPY ./public ./public
COPY ./package-lock.json ./package-lock.json
COPY ./package.json ./package.json 

RUN apt-get update

RUN apt-get install -y curl \
    && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs

RUN npm install

RUN REACT_APP_BACKEND_URL=http://localhost:8080 npm run build

RUN npm install -g serve

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]