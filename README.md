# Inception

## Description

Inception is a project focused on setting up a small infrastructure comprising different services within Docker containers.
The project utilizes Docker Compose and aims to provide a seamless deployment experience. It includes services like NGINX, WordPress with php-fpm, and MariaDB, each running in dedicated containers.

## Services

- **NGINX**: Docker container containing NGINX configured to support only TLSv1.2 or TLSv1.3.
- **WordPress**: Docker container containing WordPress and php-fpm for server-side scripting.
- **MariaDB**: Docker container containing MariaDB for database storage.

## Setup Instructions

1. Clone the repository to your local machine.
2. Navigate to the project directory.
3. Ensure Docker and Docker Compose are installed in your virtual machine.
4. Run `make` command to build Docker images and start the containers.



<img width="997" alt="Screenshot 2024-03-26 at 19 48 23 1" src="https://github.com/eetukoljonen/Inception/assets/120648288/e288ef3c-6eca-4f05-972e-f4ebbac0d172">
