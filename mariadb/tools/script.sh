#!/bin/sh

# Prepare directories and rights
mkdir -p /run/mysqld
chown -R mysql:mysql /run/mysqld
chown -R mysql:mysql /var/lib/mysql

# init database
mysql_install_db --basedir=/usr --datadir=/var/lib/mysql --user=mysql --rpm > /dev/null

# Enforce root pw, create db, add user, give rights
mysqld --user=mysql --bootstrap << EOF
USE mysql;
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PW';
CREATE DATABASE $MYSQL_DATABASE CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER '$MYSQL_USER'@'%' IDENTIFIED by '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';
GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;
GRANT SELECT ON mysql.* TO '$MYSQL_USER'@'%';
FLUSH PRIVILEGES;
EOF

exec mysqld --defaults-file=/etc/my.cnf.d/my-mariadb-conf.cnf
