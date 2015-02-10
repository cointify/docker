#!/bin/bash

#docker run --name nginx-lb -d -p 8080:80 cointify/nginx
docker run --name nginx-lb -p 8080:80 --link jboss1:jboss1 --link jboss2:jboss2 -v /Users/jsingh/Development/www/docker/load-balancer/nginx/latest/files/nginx.conf:/etc/nginx/conf.d/default.conf cointify/nginx
