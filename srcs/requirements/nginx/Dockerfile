FROM debian:buster 

MAINTAINER lusehair <lusehair@42.student.fr>

RUN apt-get update 
RUN apt-get install -y nginx
RUN rm /etc/nginx/nginx.conf 
COPY srcs/nginx.conf /etc/nginx/
COPY srcs/index.html /var/www/localhost/htdocs
COPY srcs/key.pem .
COPY srcs/cert.pem .

