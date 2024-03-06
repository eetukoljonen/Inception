FROM debian:buster

RUN apt-get update -y && apt-get install -y nginx vim curl openssl && mkdir -p /etc/nginx/ssl && \
	openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt \
	-keyout /etc/nginx/ssl/inception.key -subj "/C=FI/ST=FI/L=Helsinki/O=42/OU=42/CN=ekoljone.42.fr/UID=ekoljone" \
	&& mkdir -p /data/www

COPY conf/nginx.conf /etc/nginx/nginx.conf

COPY tools/index.html /data/www/

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]