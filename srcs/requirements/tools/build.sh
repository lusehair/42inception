docker build -t wordpress srcs/requirements/wordpress 
wait 2s
docker build -t mariadb srcs/requirements/mariadb 
wait 2s
docker build -t nginx srcs/requirements/nginx 
wait 2s
docker tag wordpress:latest wordpress:inc 
wait 2s
docker tag nginx:latest wordpress:inc 
wait 2s
docker tag mariadb:latest wordpress:inc 

