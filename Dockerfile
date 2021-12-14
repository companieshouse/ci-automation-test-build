FROM centos:7

ENV LANG en_US.utf8

RUN yum makecache fast
RUN yum update -y && \
    yum install -y \
    epel-release \
    git \
    java-1.8.0-openjdk-headless \
    make \
    maven \
    slf4j \
    unzip \
    zip && \
    yum clean all

RUN mkdir -pv /root/.m2

COPY resources/configure-maven /usr/local/bin/configure-maven
