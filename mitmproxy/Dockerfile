FROM ubuntu:latest
MAINTAINER hknam <hknam205@cs-cnu.com>

RUN apt-get update
RUN apt-get install -y python3-dev python3-pip libffi-dev libssl-dev locales vim

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL=en_US.UTF-8

EXPOSE 8080

RUN pip3 install mitmproxy
