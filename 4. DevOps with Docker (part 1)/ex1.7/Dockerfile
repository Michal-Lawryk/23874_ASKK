FROM ubuntu:latest

WORKDIR /usr/src/app

RUN apt-get update

RUN apt-get install curl -y

COPY script.sh /usr/src/app/

RUN chmod +x script.sh

CMD ["bash"]