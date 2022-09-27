FROM ubuntu:22.04 AS base
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y curl git ansible build-essential && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

FROM base AS juanjo
# RUN useradd -m juanjozg && echo "juanjozg:juanjozg" | chpasswd 
# RUN adduser juanjozg sudo
RUN addgroup --gid 1000 juanjozg
RUN adduser --gecos juanjozg --uid 1000 --gid 1000 --disabled-password juanjozg
USER juanjozg
WORKDIR /home/juanjozg
