# sudo docker build ./ -t privatemessenger
FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata
# timezone setting
ENV TZ=Asia/Tokyo

# Install the dependencies
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    wget \
    git \
    vim \
    openjdk-8-jdk \
    maven \
    zookeeper
    

# Add the Docker repository key
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -


# Add the Docker repository
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"


# Install Docker
RUN apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io

# WORKDIR
WORKDIR /kafka
RUN cd /kafka
RUN mkdir logs
RUN curl "https://downloads.apache.org/kafka/3.2.0/kafka_2.13-3.2.0.tgz" -o kafka.tgz
RUN tar -xvzf kafka.tgz --strip 1
# apt update -y && apt upgrade -y
# vim /workdir/config/server.properties
# delete.topic.enable = true
# log.dirs=/workdir/logs
#
# work.sh
# chmod +x work.sh
#
# #!/bin/bash
# /workdir/bin/zookeeper-server-start.sh /workdir/config/zookeeper.properties > zookeeper.log 2>&1 &
# /workdir/bin/kafka-server-start.sh /workdir/config/server.properties > kafka.log 2>&1 &
#
# bash work.sh
#
# /workdir/bin/kafka-topics.sh --create --replication-factor 1 --partitions 1 --bootstrap-server localhost:9092 --topic topic1
# /workdir/bin/kafka-topics.sh --create --replication-factor 1 --partitions 1 --bootstrap-server localhost:9092 --topic topic2
# /workdir/bin/kafka-topics.sh --create --replication-factor 1 --partitions 1 --bootstrap-server localhost:9092 --topic topic3
# 
# export KAFKA_BROKER_LIST=localhost:9092
# export KAFKA_TOPIC_LIST=topic1,topic2,topic3
# export KAFKA_GROUP_ID=group1
#
# sudo docker build ./ -t privatemessenger
# sudo docker run -it -d -p 8080:8080 privatemessenger