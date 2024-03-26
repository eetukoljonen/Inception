
all:
	if ! grep -q "ekoljone.42.fr" /etc/hosts; then \
        echo "127.0.0.1 ekoljone.42.fr" >> /etc/hosts; \
    fi
	mkdir -p /home/ekoljone/data/wordpress-data
	mkdir -p /home/ekoljone/data/mariadb-data
	docker compose -f srcs/docker-compose.yml build
	docker compose -f srcs/docker-compose.yml up -d
	
clean:
	docker compose -f srcs/docker-compose.yml down --rmi all -v

fclean: clean
	sudo sed -i '/ekoljone\.42\.fr/d' /etc/hosts
	rm -rf /home/ekoljone/data/wordpress-data
	rm -rf /home/ekoljone/data/mariadb-data
	docker system prune -f

re: fclean all

up:
	docker compose -f srcs/docker-compose.yml up -d

down:
	docker compose -f srcs/docker-compose.yml down

.PHONY: all clean fclean re up down