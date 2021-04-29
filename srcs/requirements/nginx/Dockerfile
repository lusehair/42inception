FROM debian:buster 

MAINTAINER lusehair <lusehair@42.student.fr>

RUN apt-get update && apt-get upgrade 
RUN apt-get install nginx

RUN mkdir -p var/run/nginx 
RUN rm /etc/nginx/conf.d/default.conf 

COPY srcs/default.conf /etc/nginx/conf.d/ 
COPY srcs/index.html /var/www/localhost/htdocs
