FROM centos 
MAINTAINER Jatinder Singh <xxxv.coin@gmail.com>

# Install PostgreSQL
RUN yum install http://yum.postgresql.org/9.3/redhat/rhel-6-x86_64/pgdg-redhat93-9.3-1.noarch.rpm
RUN yum install postgresql93-server postgresql93-contrib
# Initialize DB data files
RUN su - postgres -c '/usr/pgsql-9.3/bin/initdb -D /var/lib/pgsql/data'

