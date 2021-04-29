FROM debian:buster 

MAINTAINER lusehair <lusehair@42.student.fr>

RUN apt-get update && apt-get upgrade 
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
    wget; 
RUN	wget https://wordpress.org/latest.tar.gz
RUN tar xzvf latest.tar.gz
RUN mv wordpress /var/www/localhost/htdocs 
RUN chmod 777 -R /var/www/localhost/htdocs/wordpress
RUN rm latest.tar.gz 
WORKDIR /var/www/localhost/htdocs/wordpress 
RUN mv /var/www/localhost/htdocs/wordpress/wp-config-sample.php /var/www/localhost/htdocs/wordpress/wp-config.php 
RUN	sed -i "s/database_name_here/wordpress/" wp-config.php
RUN	sed -i "s/username_here/user1/" wp-config.php
RUN	sed -i "s/password_here/user1/" wp-config.php
RUN	sed -i "s/localhost/mysql-service/" wp-config.php
RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN	chmod +x wp-cli.phar
RUN	mv wp-cli.phar /usr/local/bin/wp 
COPY srcs/setup.sh .
RUN chmod 777 setup.sh
EXPOSE 3306 
CMD sh setup.sh 