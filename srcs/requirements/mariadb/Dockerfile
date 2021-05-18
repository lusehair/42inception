FROM debian:buster 

MAINTAINER lusehair <lusehair@42.student.fr>

RUN apt-get update
RUN apt-get install -y mariadb-server
COPY srcs/setup.sh . 
RUN chmod +x setup.sh 
#RUN sh ./setup.sh 
# COPY srcs/start.sh . 
EXPOSE 3306
#RUN sh setup.sh 
CMD sleep infinity 
