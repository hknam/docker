# ZEPPELIN : 0.7.3
# SPARK : 2.2.2
# Python : Anaconda

FROM ubuntu:16.04

ENV SPARK_PROFILE 2.2
ENV SPARK_VERSION 2.2.2
ENV HADOOP_PROFILE 2.7
ENV SPARK_HOME /usr/local/spark
ENV ZEPPELIN_VERSION 0.7.3
ENV ZEPPELIN_HOME /usr/local/zeppelin

# Update the image with the latest packages
RUN apt-get update -y; apt-get clean all

# Get utils
RUN apt-get install -y \
wget \
tar \
curl \
vim \
bzip2 \
&& \
apt-get clean all

# Remove old jdk
#RUN apt-get remove java; apt-get remove jdk

# install jdk8
RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64/
ENV PATH $PATH:$JAVA_HOME/bin

# install spark
RUN curl -s http://apache.mirror.cdnetworks.com/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-hadoop$HADOOP_PROFILE.tgz | tar -xz -C /usr/local/
RUN cd /usr/local && ln -s spark-$SPARK_VERSION-bin-hadoop$HADOOP_PROFILE spark

#install zeppelin
RUN curl -s http://archive.apache.org/dist/zeppelin/zeppelin-0.7.3/zeppelin-0.7.3-bin-netinst.tgz | tar -xz -C /usr/local/
RUN cd /usr/local && ln -s zeppelin-$ZEPPELIN_VERSION-bin-netinst zeppelin

# update boot script
COPY entrypoint.sh /etc/entrypoint.sh
RUN chown root.root /etc/entrypoint.sh
RUN chmod 700 /etc/entrypoint.sh

#spark
EXPOSE 8080 7077 8888 8081

ENTRYPOINT ["/etc/entrypoint.sh"]
