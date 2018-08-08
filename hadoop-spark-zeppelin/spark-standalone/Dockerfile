# ZEPPELIN : 0.7.3
# SPARK : 2.2.2
# Python : Anaconda

FROM ubuntu:16.04

ENV SPARK_PROFILE 2.2
ENV SPARK_VERSION 2.2.2
ENV HADOOP_PROFILE 2.7
ENV SPARK_HOME /usr/local/spark

# Update the image with the latest packages
RUN apt-get update -y; apt-get clean all

# Get utils
RUN apt-get install -y \
wget \
tar \
curl \
&& \
apt-get clean all

# Remove old jdk
#RUN apt-get remove java; apt-get remove jdk

# install jdk7
RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64/
ENV PATH $PATH:$JAVA_HOME/bin

# install spark
RUN curl -s http://apache.mirror.cdnetworks.com/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-hadoop$HADOOP_PROFILE.tgz | tar -xz -C /usr/local/
RUN cd /usr/local && ln -s spark-$SPARK_VERSION-bin-hadoop$HADOOP_PROFILE spark

# update boot script
COPY entrypoint.sh /etc/entrypoint.sh
RUN chown root.root /etc/entrypoint.sh
RUN chmod 700 /etc/entrypoint.sh

#spark
EXPOSE 8080 7077 8888 8081

ENTRYPOINT ["/etc/entrypoint.sh"]
