FROM debian:buster 

MAINTAINER lusehair <lusehair@42.student.fr>

RUN apt-get update 
RUN apt-get install -y nginx
RUN rm /etc/nginx/sites-available/default
COPY srcs/lusehair.42.fr /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/lusehair.42.fr /etc/nginx/sites-enabled
RUN rm /etc/nginx/nginx.conf 
COPY srcs/nginx.conf /etc/nginx/
# COPY srcs/index.html /var/www/localhost/htdocs
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out cert.pem -keyout key.pem -subj "/C=FR/ST=Paris/CN=lusehair"
RUN chmod 777 key.pem 
RUN chmod 777 cert.pem
COPY srcs/key.pem .
COPY srcs/cert.pem .
EXPOSE 443 
CMD nginx -g "daemon off;"


