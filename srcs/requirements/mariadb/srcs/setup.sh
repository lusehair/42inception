# service mysql start

if [ -z "$(ls -A /var/lib/mysql)" ]; then 
    mysql_install_db 
    service mysql start

    echo "CREATE USER $MARIA_LOGIN'@'localhost' identified by '$MARIA_PASS';" | mysql -u root --skip-password
    echo "CREATE DATABASE IF NOT EXISTS wordpress;"  | mysql -u root --skip-password
    echo "GRANT ALL PRIVILEGES ON wordpress.* TO '$MARIA_LOGIN'@'localhost' WITH GRANT OPTION;" | mysql -u root --skip-password
    echo "GRANT ALL PRIVILEGES ON wordpress.* TO '$MARIA_LOGIN'@'$WP_IP' IDENTIFIED BY '$MARIA_PASS' WITH GRANT OPTION;" | mysql -u root --skip-password
    echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password
    echo "exit;"
else 
    service mysql start
fi
sleep infinity 

