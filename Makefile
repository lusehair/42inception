# Colors
GREY=$'\x1b[30m'
RED=$'\x1b[31m'
GREEN=$'\x1b[32m'
YELLOW=$'\x1b[33m'
BLUE=$'\x1b[34m'
PURPLE=$'\x1b[35m'
CYAN=$'\x1b[36m'
WHITE=$'\x1b[37m



NAME = inception
START_PATH = srcs 


setup:
		
		@if ! [ "$(shll id -u)" = 0 ]; then 
			@echo "${RED}Please, run the Makefile as root.${RED}"
			exit 1
		fi
		@echo "${YELLOW} Stopping local services ...${YELLOW}"
		@service stop nginx; @service stop mysql; 
		@echo '127.0.0.1 lusehair.42.fr' >> /etc/hosts;
		@echo '127.0.0.1 www.lusehair.42.fr' >> /etc/hosts; 

stop:
		docker-compose down $(START_PATH); 

clean: stop
		@docker rm $$(docker ps -aq); 
		@docker system prune; 

purge: clean
	
		
		rm -Rf ~/data/;

reload: 
		service docker restart; 
		docker-compose up --build $(START_PATH); 

all: $(NAME)

$(NAME): setup reload 

.PHONY: setup stop clean purge reload all 