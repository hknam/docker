FROM ubuntu:latest
MAINTAINER hknam <hknam205@cs-cnu.com>

RUN apt-get update
RUN apt-get install -y python3-dev python3-pip libffi-dev libssl-dev locales vim
RUN locale-gen en_US.UTF-8

RUN echo "export LC_ALL=en_US.UTF-8" >> "/root/.bashrc"
RUN /bin/bash -c "source /root/.bashrc"

RUN mitmproxy

EXPOSE 8080
