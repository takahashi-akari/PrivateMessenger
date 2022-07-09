# PrivateMessenger
PrivateMessenger with Kafka.  
The Linux client software and the Kafka server software are both written in Java.
Secure and Private messaging with Kafka.  
TCP/IP communication with Kafka.  
Kafka is a distributed publish-subscribe messaging system.

# Java Install
~~~
$ sudo apt update -y && sudo apt install -y openjdk-11-jdk
~~~

# Java Version
~~~
$ java -version
openjdk version "11.0.15" 2022-04-19
OpenJDK Runtime Environment (build 11.0.15+10-Ubuntu-0ubuntu0.20.04.1)
OpenJDK 64-Bit Server VM (build 11.0.15+10-Ubuntu-0ubuntu0.20.04.1, mixed mode, sharing)
~~~
# PrivateMessenger Client
~~~
+----------------------+          +--------------------------+          +----------------------+
|    Linux Client      |   TCP    |   Central Kafka Server   |   TCP    |    Linux Client      |
|   ClientSoftware     +<-------->+    RealTimeMessaging     +<-------->|   ClientSoftware     +
|Ubuntu 20.04LTS x86_64| Messages |  Ubuntu 20.04LTS  x86_64 | Messages |Ubuntu 20.04LTS x86_64|
+----------------------+          +--------------------------+          +----------------------+ 
~~~

~~~
$ git clone
$ cd PrivateMessenger-Client
$ mvn clean install
$ java -jar target/PrivateMessenger-Client-1.0-SNAPSHOT.jar
~~~

# PrivateMessenger Server
~~~
+----------------------+          +--------------------------+          +----------------------+
|    Linux Client      |   TCP    |   Central Kafka Server   |   TCP    |    Linux Client      |
|   ClientSoftware     +<-------->+    RealTimeMessaging     +<-------->|   ClientSoftware     +
|Ubuntu 20.04LTS x86_64| Messages |  Ubuntu 20.04LTS  x86_64 | Messages |Ubuntu 20.04LTS x86_64|
+----------------------+          +--------------------------+          +----------------------+ 
~~~

~~~
$ git clone
$ cd PrivateMessenger-Server
$ mvn clean install
$ java -jar target/PrivateMessenger-Server-1.0-SNAPSHOT.jar
~~~

# Links
- [Apache Kafka](https://www.kafka.apache.org/)
- [Apache Kafka Documentation](https://kafka.apache.org/documentation)

# License
MIT License Copyright (c) 2022 [Takahashi Akari](https://github.com/takahashi-akari)