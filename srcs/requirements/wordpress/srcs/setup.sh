# systemctl restart nginx 
#service nginx start 

# systemctl restart php-fpm7
#service php7.3-fpm restart

#sleep infinity

if ! wp core --allow-root is-installed; then  

    wp core --allow-root download 

    
    wp config install --allow-root --url='https://lusehair.42.fr' --title='WordPress for Inception' --admin_user={$WP_LOGIN} --admin_password={$WP_PASS}  --admin_email="admin@admin.fr" --path='/var/wordpress';
 

    wp --allow-root user create $WPU_1LOGIN user1@user.com --user_pass=$WPU_1PASS --role=administrator
    wp --allow-root user create $WPU_2LOGIN user2@user.com --user_pass=$WPU_2PASS --role=author
fi 

service php7.3-fpm reload
nginx -g "deamon off;" 
