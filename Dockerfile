FROM ubuntu:22.04 AS base
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential sudo && \
    apt-get update && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

FROM base AS prime
RUN adduser --disabled-password --gecos '' juanjozg
RUN adduser juanjozg sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER juanjozg
WORKDIR /home/juanjozg
