FROM centos:centos7
MAINTAINER Jatinder Singh <xxxv.coin@gmail.com>

RUN yum -y update; yum clean all

ENV JDK_VERSION 8u31
ENV JDK_BUILD_VERSION b13
RUN curl -LO "http://download.oracle.com/otn-pub/java/jdk/$JDK_VERSION-$JDK_BUILD_VERSION/jdk-$JDK_VERSION-linux-x64.rpm" -H 'Cookie: oraclelicense=accept-securebackup-cookie' && rpm -i jdk-$JDK_VERSION-linux-x64.rpm; rm -f jdk-$JDK_VERSION-linux-x64.rpm; yum clean all
ENV JAVA_HOME /usr/java/default

# Install PostgreSQL
RUN rpm -i http://yum.postgresql.org/9.3/redhat/rhel-6-x86_64/pgdg-redhat93-9.3-1.noarch.rpm
RUN yum install postgresql93-server postgresql93-contrib
# Initialize DB data files
RUN su - postgres -c '/usr/pgsql-9.3/bin/initdb -D /var/lib/pgsql/data'

RUN yum remove curl;  yum clean all
