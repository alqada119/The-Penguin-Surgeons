FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    build-essential \
    linux-source 

COPY . /kernel

WORKDIR /kernel

CMD "./build-dependencies.sh"