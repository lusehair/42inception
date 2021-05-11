FROM debian:buster 

MAINTAINER lusehair <lusehair@42.student.fr>

RUN apt-get update 
RUN apt-get install -y nginx python3-acme python3-certbot python3-mock python3-openssl python3-pkg-resources python3-pyparsing python3-zope.interface
RUN apt-get install -y python3-certbot-nginx
RUN rm /etc/nginx/sites-available/default
COPY srcs/lusehair.42.fr /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/lusehair.42.fr /etc/nginx/sites-enabled
RUN rm /etc/nginx/nginx.conf 
COPY srcs/nginx.conf /etc/nginx/
#CMD ["bash","systemctl restart nginx"]
# COPY srcs/index.html /var/www/localhost/htdocs
# COPY srcs/key.pem .
# COPY srcs/cert.pem .

