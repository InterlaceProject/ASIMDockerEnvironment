FROM ubuntu:16.04
MAINTAINER eduard.hirsch@fh-salzburg.ac.at
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential
RUN apt-get install -y maven
RUN apt-get install -y vim
RUN apt-get install -y git

#install java
RUN apt-get install -y  software-properties-common && \
      add-apt-repository ppa:webupd8team/java -y && \
      apt-get update && \
      echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
      apt-get install -y oracle-java8-installer

COPY  ./scripts/executeASIMSpec.sh \
      ./scripts/asimrc \
      ./scripts/buildICEFDocker.sh \
      /home/

RUN chmod a+x /home/*.sh
#EXPOSE 3000 8000 8080 9090
