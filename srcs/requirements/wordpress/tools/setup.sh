
sleep 8;
if  [ ! -f /var/www/wordpress/wp-config.php ]; then 
    
    wp core --allow-root download --locale=fr_FR --force 
    sleep 5;
    while  [ ! -f /var/www/wordpress/wp-config.php ]; do   

        
        wp core config --allow-root --dbname=wordpress --dbuser=$MARIA_LOGIN --dbpass=$MARIA_PASS --dbhost=mariadb:3306
        

    done 
    wp core install --allow-root --url='lusehair.42.fr' --title='WordPress for Inception' --admin_user=$WP_LOGIN --admin_password=$WP_PASS  --admin_email="admin@admin.fr" --path='/var/www/wordpress';
    wp  user create --allow-root $WPU_1LOGIN user2@user.com --user_pass=$WPU_1PASS --role=author
    wp theme install --allow-root dark-mode --activate     
fi 
php-fpm7.3 --nodaemonize
