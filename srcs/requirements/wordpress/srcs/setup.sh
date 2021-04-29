while true; 
do 
    wp core install --url='https://'$EXT_IP':3306' \
    --title='WordPress for ft_services' --admin_user=''$WP_LOGIN'' --admin_password=''$WP_PASS'' \
    --admin_email="admin@admin.fr" && break; done ; 

wp  user create $WPU_1LOGIN user1@user.com --user_pass=$WPU_1PASS
wp  user create $WPU_2LOGIN user2@user.com --user_pass=$WPU_2PASS --role=author
php-fpm7 
nginx -g "deamon off;"
