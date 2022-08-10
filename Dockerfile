FROM --platform=linux/amd64 ubuntu:22.10

WORKDIR /usr/src/sketch

RUN apt update
RUN apt install -y default-jre

ADD sketch-1.7.6.tar.gz .
ENV PATH="${PATH}:/usr/src/sketch/sketch-1.7.6/sketch-frontend"

WORKDIR /root/sketch
