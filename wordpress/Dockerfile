FROM debian:buster

RUN groupadd --system nginx && \
    useradd -g nginx --shell /bin/false --comment "nginx user" nginx && \ 
	apt-get update -y && apt-get install -y mariadb-client php-fpm wget && mkdir -p /var/www/html/wordpress/ /run/php/

COPY conf/www.conf /etc/php81/php-fpm.d/www.conf

COPY tools/wordpress_setup.sh /tmp/wordpress_setup.sh

EXPOSE 9000

CMD [ "sh", "/tmp/wordpress_setup.sh" ]