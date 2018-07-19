FROM centos:6

# install essential software
RUN yum update -y
RUN yum install -y wget vim gcc openssh-server openssh-clients openssl-devel

RUN service sshd start

RUN ssh-keygen -t rsa -q -N "" -f /root/.ssh/id_rsa.pub
RUN cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys

# install java 1.8
RUN wget http://repo.wadizcorp.com/repository/shared/utility/jdk8/jdk-8u144-linux-x64.tar.gz -P /root
RUN tar xzf /root/jdk-8u144-linux-x64.tar.gz -C /root/
RUN mv /root/jdk1.8.0_144 /opt
RUN alternatives --install /usr/bin/java java /opt/jdk1.8.0_144/bin/java 2
RUN echo 1 | alternatives --config java

# install hadoop

RUN wget http://mirror.navercorp.com/apache/hadoop/common/hadoop-2.9.1/hadoop-2.9.1.tar.gz -P /root
RUN tar xzf /root/hadoop-2.9.1.tar.gz -C /root/
RUN mv /root/hadoop-2.9.1 /opt

#COPY ./config/hadoop/core-site.xml /opt/hadoop-2.9.1/etc/hadoop/core-site.xml
#COPY ./config/hadoop/hdfs-site.xml /opt/hadoop-2.9.1/etc/hadoop/hdfs-site.xml
#COPY ./config/hadoop/yarn-site.xml /opt/hadoop-2.9.1/etc/hadoop/yarn-site.xml
#COPY ./config/hadoop/mapred-site.xml /opt/hadoop-2.9.1/etc/hadoop/mapred-site.xml
#COPY ./config/hadoop/hadoop-env.sh /opt/hadoop-2.9.1/etc/hadoop/hadoop-env.sh

# install spark
RUN wget http://mirror.navercorp.com/apache/spark/spark-2.3.1/spark-2.3.1-bin-hadoop2.7.tgz -P /root
RUN tar xzf /root/spark-2.3.1-bin-hadoop2.7.tgz -C /root/
RUN mv /root/spark-2.3.1-bin-hadoop2.7.tgz /opt

COPY ./config/spark/spark-env.sh /opt/spark-2.3.1-bin-hadoop2.7/conf/spark-env.sh


# install zeppelin
RUN wget http://mirror.navercorp.com/apache/zeppelin/zeppelin-0.8.0/zeppelin-0.8.0-bin-all.tgz -P /root
RUN tar xzf /root/zeppelin-0.8.0-bin-all.tgz -C /root/
RUN mv /root/zeppelin-0.8.0-bin-all /opt

COPY ./config/zeppelin/zeppelin-env.sh /opt/zeppelin-0.8.0-bin-all/conf/zeppelin-env.sh
COPY ./config/zeppelin/zeppelin-site.xml /opt/zeppelin-0.8.0-bin-all/conf/zeppelin-site.xml

# apply .bashrc

COPY ./config/centos/.bashrc /root/.bashrc

EXPOSE 8020 8030:8042 50070 50010 50020
EXPOSE 8888 8888 4040
