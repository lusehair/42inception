# systemctl restart nginx 
#service nginx start 

# systemctl restart php-fpm7
#service php7.3-fpm restart

#sleep infinity

if  [ ! -f /var/wordpress/wp-config.php ]; then  

    wp core --allow-root download 
    
    wp core config --allow-root --dbname=wordpress --dbuser=$MARIA_LOGIN --dbpass=$MARIA_PASS --dbhost=mariadb:3306
    wp core install --allow-root --url='localhost' --title='WordPress for Inception' --admin_user={$WP_LOGIN} --admin_password={$WP_PASS}  --admin_email="admin@admin.fr" --path='/var/wordpress';
    wp  user create --allow-root $WPU_1LOGIN user1@user.com --user_pass=$WPU_1PASS --role=administrator
    wp  user create --allow-root $WPU_2LOGIN user2@user.com --user_pass=$WPU_2PASS --role=author
fi 

php-fpm7.3 --nodaemonize
#nginx -g "deamon off;" 
