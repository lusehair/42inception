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
    wget \
    curl \
    openssl \
    sendmail; 
RUN	wget https://wordpress.org/latest.tar.gz
RUN tar xzvf latest.tar.gz

RUN mv wordpress /var/
RUN rm latest.tar.gz 
# COPY srcs/key.pem .
# COPY srcs/cert.pem .
COPY srcs/setup.sh /
COPY srcs/wp-config.php /var/wordpress
RUN chmod 777 /setup.sh
WORKDIR /var/wordpress
RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN	chmod +x wp-cli.phar
RUN	mv wp-cli.phar /usr/local/bin/wp 
RUN service php7.3-fpm start
EXPOSE 9000
CMD sleep infinity 
