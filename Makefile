
all:
	if ! grep -q "ekoljone.42.fr" /etc/hosts; then \
        sudo sh -c 'echo "127.0.0.1 ekoljone.42.fr" >> /etc/hosts'; \
    fi
	if ! grep -q "www.ekoljone.42.fr" /etc/hosts; then \
        sudo sh -c 'echo "127.0.0.1 www.ekoljone.42.fr" >> /etc/hosts'; \
    fi
	mkdir -p /Users/eetukoljonen/Desktop/Inception/wordpress-data
	mkdir -p /Users/eetukoljonen/Desktop/Inception/mariadb-data
	docker-compose -f docker-compose.yml build
	docker-compose -f docker-compose.yml up -d
	
clean:
	docker-compose -f docker-compose.yml down --rmi all -v

fclean: clean
	sudo sed -i '' '/ekoljone\.42\.fr/d' /etc/hosts
	rm -rf /Users/eetukoljonen/Desktop/Inception/wordpress-data
	rm -rf /Users/eetukoljonen/Desktop/Inception/mariadb-data
	docker system prune -f

re: fclean all

up:
	docker-compose -f docker-compose.yml up -d

down:
	docker-compose -f docker-compose.yml down

.PHONY: all clean fclean re up down