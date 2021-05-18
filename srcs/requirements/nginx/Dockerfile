FROM debian:buster 

MAINTAINER lusehair <lusehair@42.student.fr>

RUN apt-get update 
RUN apt-get install -y nginx openssl
RUN rm /etc/nginx/sites-available/default
RUN rm /etc/nginx/sites-enabled/default
#RUN rm /etc/hosts 
#COPY srcs/hosts /etc
COPY srcs/default /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled
#RUN rm /etc/nginx/nginx.conf 
# COPY srcs/index.html /var/www/localhost/htdocs
RUN openssl req -newkey rsa:4096 -x509 -days 365 -nodes -out /etc/ssl/certs/cert.crt -keyout /etc/ssl/certs/key42.pem -subj "/C=FR/ST=Paris/CN=lusehair"
RUN chmod 777 /etc/ssl/certs/*
EXPOSE 443 
#RUN nginx -g "daemon off;"
ENTRYPOINT service nginx start ; bash 


