# Stable version of PHP
FROM php:8.2-fpm-alpine

# To excuse in the right folder
# For all the containers we make this folder should hold the final application
WORKDIR /var/www/html

COPY Jisho .


# Install some extra dependencies
# Install pdo and pdo_mysql extensions
RUN docker-php-ext-install pdo pdo_mysql

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
 
USER laravel
