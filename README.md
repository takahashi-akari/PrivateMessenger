# PrivateMessenger
PrivateMessenger with Kafka.  
The Linux client software and the Kafka server software are both written in Java.  
Secure and Private messaging with Kafka.  
TCP/IP communication with Kafka.  
Kafka is a distributed publish-subscribe messaging system.

# Java Install
~~~
$ sudo apt update -y && sudo apt install -y openjdk-8-jdk
~~~

# Java Version
~~~
$ java -version
java -version
openjdk version "1.8.0_312"
OpenJDK Runtime Environment (build 1.8.0_312-8u312-b07-0ubuntu1~20.04-b07)
OpenJDK 64-Bit Server VM (build 25.312-b07, mixed mode)
~~~
# PrivateMessenger-Client
~~~
+----------------------+          +--------------------------+          +----------------------+
|    Linux Client      |   TCP    |   Central Kafka Server   |   TCP    |    Linux Client      |
|   ClientSoftware     +<-------->+    RealTimeMessaging     +<-------->|   ClientSoftware     +
|Ubuntu 20.04LTS x86_64| Messages |  Ubuntu 20.04LTS  x86_64 | Messages |Ubuntu 20.04LTS x86_64|
+----------------------+          +--------------------------+          +----------------------+ 
~~~

- [PrivateMessenger-Client](https://github.com/takahashi-akari/PrivateMessenger-Client)

~~~
$ git clone
$ cd PrivateMessenger-Client
$ mvn clean install
$ java -jar target/PrivateMessenger-Client-1.0-SNAPSHOT.jar
~~~

# PrivateMessenger-Server
~~~
+----------------------+          +--------------------------+          +----------------------+
|    Linux Client      |   TCP    |   Central Kafka Server   |   TCP    |    Linux Client      |
|   ClientSoftware     +<-------->+    RealTimeMessaging     +<-------->|   ClientSoftware     +
|Ubuntu 20.04LTS x86_64| Messages |  Ubuntu 20.04LTS  x86_64 | Messages |Ubuntu 20.04LTS x86_64|
+----------------------+          +--------------------------+          +----------------------+ 
~~~

- [PrivateMessenger-Server](https://github.com/takahashi-akari/PrivateMessenger-Server)

~~~
$ git clone
$ cd PrivateMessenger-Server
$ mvn clean install
$ java -jar target/PrivateMessenger-Server-1.0-SNAPSHOT.jar
~~~

# Links
- [Apache Kafka](https://www.kafka.apache.org/)
- [Apache Kafka Documentation](https://kafka.apache.org/documentation)
- [PrivateMessenger-Client](https://github.com/takahashi-akari/PrivateMessenger-Client)
- [PrivateMessenger-Server](https://github.com/takahashi-akari/PrivateMessenger-Server)

# License
MIT License Copyright (c) 2022 [Takahashi Akari](https://github.com/takahashi-akari)