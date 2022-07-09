FROM Ubuntu:20.04


# Install the dependencies
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    wget \
    git \
    vim

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
WORKDIR /workdir
