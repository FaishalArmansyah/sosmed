FROM php:8.0-apache
RUN apt update
RUN docker-php-ext-install mysqli pdo pdo_mysql
WORKDIR /var/www/html
COPY . .
EXPOSE 80

