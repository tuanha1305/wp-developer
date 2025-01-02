FROM php:8.1-fpm

# Cài đặt các thư viện hệ thống và tiện ích mở rộng PHP
RUN apt-get update && apt-get install -y \
    libzip-dev \
    libjpeg-dev \
    libpng-dev \
    libfreetype6-dev \
    libonig-dev \
    libxml2-dev \
    zlib1g-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd zip mysqli pdo_mysql soap intl

WORKDIR /var/www/html
