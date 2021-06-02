# systemctl restart nginx 
#service nginx start 

# systemctl restart php-fpm7
#service php7.3-fpm restart

#sleep infinity

#chown -R www-data:www-data /var/wordpress/

wp core --allow-root download 

sleep 5;
while  [ ! -f /var/www/wordpress/wp-config.php ]; do   

    # while true; do 
    wp core config --allow-root --dbname=wordpress --dbuser=$MARIA_LOGIN --dbpass=$MARIA_PASS --dbhost=mariadb:3306
    
     #if [ -f /var/wordpress/wp-config.php ]; break; 

done 
    wp core install --allow-root --url='lusehair.42.fr' --title='WordPress for Inception' --admin_user={$WP_LOGIN} --admin_password={$WP_PASS}  --admin_email="admin@admin.fr" --path='/var/www/wordpress';
    wp  user create --allow-root $WPU_1LOGIN user2@user.com --user_pass=$WPU_1PASS --role=author
#fi 

php-fpm7.3 --nodaemonize
#nginx -g "deamon off;" 
