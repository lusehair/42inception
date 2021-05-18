export ID=$(docker ps | grep 'nginx' |awk '{print $1}')
export NGINX_IP=$(docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $ID)
export ID=$(docker ps | grep 'wordpress' |awk '{print $1}')
export WP_IP=$(docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $ID)
export ID=$(docker ps | grep 'mariadb' |awk '{print $1}')
export DB_IP=$(docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $ID)

echo  $NGINX_IP
echo  $WP_IP 
echo  $DB_IP