# @title PrivateMessenger Dockerfile
# @description This is the Dockerfile for the PrivateMessenger docker image.
# @author Takahashi Akari <akaritakahashioss@gmail.com>
# @version 0.0.10
# @date 2022-07-11
# @license MIT License (https://opensource.org/licenses/MIT)
# @copyright 2022 Takahashi Akari <akaritakahashioss@gmail.com>
#
# sudo groupadd docker
# sudo usermod -aG docker $USER
# newgrp docker
# docker build ./ -t privatemessenger
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

# kafka
WORKDIR /kafka
RUN cd /kafka
RUN mkdir logs
RUN curl "https://downloads.apache.org/kafka/3.2.0/kafka_2.13-3.2.0.tgz" -o kafka.tgz
RUN tar -xvzf kafka.tgz --strip 1
# apt update -y && apt upgrade -y
# vim /kafka/config/server.properties
# delete.topic.enable = true
# log.dirs=/kafka/logs
#
# work.sh
# chmod +x work.sh
#
# #!/bin/bash
# /kafka/bin/zookeeper-server-start.sh /kafka/config/zookeeper.properties > zookeeper.log 2>&1 &
# /kafka/bin/kafka-server-start.sh /kafka/config/server.properties > kafka.log 2>&1 &
#
# bash work.sh
#
# /kafka/bin/kafka-topics.sh --create --replication-factor 1 --partitions 1 --bootstrap-server localhost:9092 --topic topic1
# /kafka/bin/kafka-topics.sh --create --replication-factor 1 --partitions 1 --bootstrap-server localhost:9092 --topic topic2
# /kafka/bin/kafka-topics.sh --create --replication-factor 1 --partitions 1 --bootstrap-server localhost:9092 --topic topic3
# 
# export KAFKA_BROKER_LIST=localhost:9092
# export KAFKA_TOPIC_LIST=topic1,topic2,topic3
# export KAFKA_GROUP_ID=group1
#
# git clone https://github.com/takahashi-akari/PrivateMessenger-Server.git
# cd PrivateMessenger-Server/
# cd privatemessengerserver/
# mvn clean compile assembly:single
# java -jar target/PrivateMessenger-Server-x.x.x-with-dependencies.jar
#
# docker build ./ -t privatemessenger
# docker run -it -d -p 8080:8080 privatemessenger