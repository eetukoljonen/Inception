FROM debian:11

RUN apt-get update && apt-get install -y mariadb-server mariadb-client

EXPOSE 3306

COPY conf/my-mariadb-conf.cnf /etc/my.cnf.d/my-mariadb-conf.cnf
RUN chmod 644 /etc/my.cnf.d/my-mariadb-conf.cnf

COPY ./tools/script.sh /tmp/script.sh
RUN chmod 777 /tmp/script.sh

ENTRYPOINT ["sh", "/tmp/script.sh"]