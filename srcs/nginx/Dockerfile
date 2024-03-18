FROM debian:11

RUN apt-get update -y && apt-get install -y nginx vim curl openssl && \
	mkdir -p /etc/nginx/ssl /run/nginx && \
	openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt \
	-keyout /etc/nginx/ssl/inception.key -subj "/C=FI/ST=FI/L=Helsinki/O=42/OU=42/CN=ekoljone.42.fr/UID=ekoljone"

COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]