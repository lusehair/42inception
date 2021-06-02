FROM debian:buster 

MAINTAINER lusehair <lusehair@42.student.fr>

RUN apt-get update 
RUN apt-get install -y nginx openssl vim less net-tools
RUN rm /etc/nginx/sites-available/default
RUN rm /etc/nginx/sites-enabled/default

COPY tools/nginx.conf /etc/nginx/sites-available/default  
#COPY tools/nginx.conf /etc/nginx/sites-available/default  
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
# COPY tools/index.html /var/www/localhost/htdocs
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -days 365 -nodes -out /etc/nginx/ssl/www.lusehair.42.fr.crt -keyout /etc/nginx/ssl/www.lusehair.42.fr.key -subj "/C=FR/ST=Paris/CN=lusehair"
RUN chmod 777 /etc/nginx/ssl/*
RUN chmod 777 -R /var/www 
RUN chown -R www-data:www-data /var/www/
EXPOSE 443 
#CMD nginx -g "daemon off;"
CMD sleep infinity

