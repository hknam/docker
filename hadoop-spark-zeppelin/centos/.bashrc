# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias vi=vim

export JAVA_HOME=/opt/jdk1.8.0_144
export PATH=$PATH:$JAVA_HOME/bin

export HADOOP_HOME=/opt/hadoop-2.8.4
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$HADOOP_HOME/sbin

export SPARK_HOME=/opt/spark-2.2.0-bin-hadoop2.7
export PATH=$PATH:$SPARK_HOME/bin
export PYSPARK_PYTHON=python3

export ZEPPELIN_HOME=/opt/zeppelin-0.8.0-bin-netinst
export PATH=$PATH:$ZEPPELIN_HOME/bin


# added by Anaconda3 installer
export PATH="/root/anaconda3/bin:$PATH"
