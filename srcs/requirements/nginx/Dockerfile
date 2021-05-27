FROM debian:buster 

MAINTAINER lusehair <lusehair@42.student.fr>

RUN apt-get update 
RUN apt-get install -y nginx openssl vim less net-tools
RUN rm /etc/nginx/sites-available/default
RUN rm /etc/nginx/sites-enabled/default
#RUN rm /etc/hosts 
#COPY tools/hosts /etc
COPY tools/default /etc/nginx/nginx.conf 
#COPY tools/default /etc/nginx/sites-available
RUN ln -s /etc/var/www/wordpress /etc/nginx/sites-enabled
#RUN rm /etc/nginx/nginx.conf 
# COPY tools/index.html /var/www/localhost/htdocs
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -days 365 -nodes -out /etc/nginx/ssl/cert.crt -keyout /etc/nginx/ssl/key42.key -subj "/C=FR/ST=Paris/CN=lusehair"
RUN chmod 777 /etc/nginx/ssl/*
EXPOSE 443 
#CMD nginx -g "daemon off;"
CMD sleep infinity

