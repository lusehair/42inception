FROM debian:buster 

MAINTAINER lusehair <lusehair@42.student.fr>

RUN apt-get update
RUN apt-get install -y php7.3-fpm \
    php7.3-common \
    php7.3-mysql \
    php7.3-gmp \
    php7.3-curl \ 
    php7.3-intl \
    php7.3-mbstring \
	php7.3-xmlrpc \
    php7.3-gd \
    php7.3-xml \
    php7.3-cli \
    php7.3-zip \
    php7.3-soap \
    php7.3-imap \
    php7.3-fpm \
    wget \
    curl \
    openssl \
    sendmail \ 
    mariadb-client \
    vim;  
RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN	chmod +x wp-cli.phar
RUN	mv wp-cli.phar /usr/local/bin/wp 
# COPY tools/key.pem .
# COPY tools/cert.pem .
RUN echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
RUN mkdir -p /var/wordpress
RUN chmod 777 /var/wordpress/
RUN mkdir -p /run/php/
COPY tools/setup.sh /
RUN chmod 777 /setup.sh

WORKDIR /var/wordpress

#RUN service php7.3-fpm start
EXPOSE 9000
#CMD service php7.3-fpm start 
CMD  /setup.sh 
#CMD sleep infinity