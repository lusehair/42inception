#!bin/bash

docker tag mariadb:latest mariadb:inc 
docker tag wordpress:latest wordpress:inc 
docker tag nginx:latest nginx:inc 

docker network create --driver bridge ince 
docker network --name incept_mariadb --network ince mariadb:inc 
docker network --name incept_wordpress --network ince incept:inc 
docker network --name incept_nginx --network ince nginx:inc 
