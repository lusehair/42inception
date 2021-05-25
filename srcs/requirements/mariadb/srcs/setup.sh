# service mysql start

if [ -z "$(ls -A /var/lib/mysql)" ]; then 
    su root mysql_install_db 
    service mysql start
    
    mysql -e "CREATE USER '${MARIA_LOGIN}'@'localhost' identified by '${MARIA_PASS}';" &&\
	mysql -e "CREATE DATABASE IT NOT EXISTS wordpress;" &&\
	mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${MARIA_LOGIN}'@'localhost' IDENTIFIED BY '${MARIA_PASS}';" &&\
	mysql -e "FLUSH PRIVILEGES;"
    mysql -e "update mysql.user set host='%' where user = '${MARIA_LOGIN}';"
    
    #echo "CREATE USER $MARIA_LOGIN'@'localhost' identified by '$MARIA_PASS';" | mysql -u root --skip-password
    #echo "CREATE DATABASE IF NOT EXISTS wordpress;"  | mysql -u root --skip-password
    #echo "GRANT ALL PRIVILEGES ON wordpress.* TO '$MARIA_LOGIN'@'localhost' WITH GRANT OPTION;" | mysql -u root --skip-password
    #echo "GRANT ALL PRIVILEGES ON wordpress.* TO '$MARIA_LOGIN'@'$WP_IP' IDENTIFIED BY '$MARIA_PASS' WITH GRANT OPTION;" | mysql -u root --skip-password
    #echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password
    #echo "exit;"
fi
    service mysql start
