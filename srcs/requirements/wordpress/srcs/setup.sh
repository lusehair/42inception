# systemctl restart nginx 
#service nginx start 

# systemctl restart php-fpm7
#service php7.3-fpm restart

sleep infinity

if ! wp core --allow-root is-installed; then  

    wp config create --allow-root --dbname='wordpress' --dbuser={$MARIA_LOGIN} --dbpass={$MARIA_PASS} --dbhost='http://mariadb:3306'
    
    wp core install --allow-root --url= \
    --title='WordPress for Inception' --admin_user={$WP_LOGIN} --admin_password={$WP_PASS}  --url='http://localhost'\
    --admin_email="admin@admin.fr" ;
 

    wp --allow-root user create $WPU_1LOGIN user1@user.com --user_pass=$WPU_1PASS
    wp --allow-root user create $WPU_2LOGIN user2@user.com --user_pass=$WPU_2PASS --role=author
fi 

service php7.3-fpm reload
# nginx -g "deamon off;" 
