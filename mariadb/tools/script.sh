#!/bin/sh

# Prepare directories and rights
mkdir -p /run/mysqld
chown -R mysql:mysql /run/mysqld
chown -R mysql:mysql /var/lib/mysql

# init database
mysql_install_db --basedir=/usr --datadir=/var/lib/mysql --user=mysql --rpm > /dev/null


mv /var/lib/mysql/ib_logfile0 /var/lib/mysql/ib_logfile0.bak
mv /var/lib/mysql/ib_logfile1 /var/lib/mysql/ib_logfile1.bak


# Enforce root pw, create db, add user, give rights
mysqld --user=mysql --bootstrap << EOF
USE mysql;
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PW';
CREATE DATABASE $WORDPRESS_DATABASE CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER '$WORDPRESS_USER'@'%' IDENTIFIED by '$WORDPRESS_PW';
GRANT ALL PRIVILEGES ON $WORDPRESS_DATABASE.* TO '$WORDPRESS_USER'@'%';
GRANT ALL PRIVILEGES ON *.* TO '$WORDPRESS_USER'@'%' IDENTIFIED BY '$WORDPRESS_PW' WITH GRANT OPTION;
GRANT SELECT ON mysql.* TO '$WORDPRESS_USER'@'%';
FLUSH PRIVILEGES;
EOF


exec mysqld --defaults-file=/etc/my.cnf.d/my-mariadb-conf.cnf
