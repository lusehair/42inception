FROM debian:buster 

MAINTAINER lusehair <lusehair@42.student.fr>

RUN apt-get update
RUN apt-get install -y mariadb-server vim; 

COPY tools/setup.sh . 
RUN chmod +x setup.sh 
#RUN sh ./setup.sh
# COPY tools/start.sh . 
EXPOSE 3306
#RUN sh setup.sh 
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf 
# Swith off the bind address 
COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d 
#CMD service mysql start
CMD ./setup.sh 
#CMD sleep infinity