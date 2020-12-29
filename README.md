# Docker4Laravel

A quick way to spin up a development Docker environment for Laravel or small php project.

*** * Not for use in Production Environment***

## Docker Images Used
- NGINX
- MySQL 8
- PHP-FPM 7.4
- Redis
- phpMyAdmin

## Installation
Clone .env.example to .env
Update .env with your values

From the terminal run the commands:
- `docker-compose build` to build the containers.
- `docker-compose up -d` to start the services.
- `docker-compose down` to stop the containers.
