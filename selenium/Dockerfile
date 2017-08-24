FROM ubuntu:latest
MAINTAINER hknam

RUN cd /etc/apt && \
    sed -i 's/archive.ubuntu.com/kr.archive.ubuntu.com/g' sources.list && \
        sed -i 's/archive.ubuntu.com/kr.archive.ubuntu.com/g' sources.list.d/proposed.list


RUN apt-get update && apt-get install -y \
	firefox \
	unzip \
	xvfb \
	vim \
	python-software-properties \
	software-properties-common \
	bash-completion \ 
	git \
	wget \
	python3-pipi \
	libssl-dev \
	mitmproxy

RUN pip3 install selenium pyvirtualdisplay

RUN git clone https://github.com/hknam/SearchKeyword ./home

