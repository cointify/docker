FROM centos:centos7
MAINTAINER J Singh <xxxv.coin@gmail.com>

RUN yum -y update; yum clean all

ENV JDK_VERSION 8u31
ENV JDK_BUILD_VERSION b13
RUN curl -LO "http://download.oracle.com/otn-pub/java/jdk/$JDK_VERSION-$JDK_BUILD_VERSION/jdk-$JDK_VERSION-linux-x64.rpm" -H 'Cookie: oraclelicense=accept-securebackup-cookie' && rpm -i jdk-$JDK_VERSION-linux-x64.rpm; rm -f jdk-$JDK_VERSION-linux-x64.rpm; yum clean all
ENV JAVA_HOME /usr/java/default

RUN yum remove curl;  yum clean all
