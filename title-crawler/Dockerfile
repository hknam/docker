FROM ubuntu:latest
MAINTAINER hknam

RUN cd /etc/apt && \
    sed -i 's/archive.ubuntu.com/kr.archive.ubuntu.com/g' sources.list


RUN apt-get update && apt-get install -y \
	firefox \
	zip \
	xvfb \
	vim \
	python-software-properties \
	software-properties-common \
	bash-completion \ 
	git \
	wget \
	python3-pip \
	python3-dev \
	libssl-dev \
	locales \
	psmisc \
    tzdata

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL=en_US.UTF-8

RUN echo "Asia/Seoul" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata
RUN ln -fs /usr/share/zoneinfo/Asia/Seoul /etc/localtime


RUN pip3 install selenium pyvirtualdisplay

RUN git clone https://github.com/hknam/TitleCrawler /home

