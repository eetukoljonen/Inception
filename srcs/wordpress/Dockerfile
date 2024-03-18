FROM debian:11

RUN groupadd --system nginx && \
    useradd -g nginx --shell /bin/false --comment "nginx user" nginx && \ 
	apt-get update -y && apt-get install -y mariadb-client php7.4 php7.4-cgi php7.4-mysql php7.4-fpm wget && mkdir -p /var/www/html/wordpress/ /run/php/

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf 

COPY tools/wordpress_setup.sh /tmp/wordpress_setup.sh

EXPOSE 9000

CMD [ "sh", "/tmp/wordpress_setup.sh" ]