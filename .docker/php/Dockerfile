FROM php:8.2-fph-alpine

COPY ./php.ini /usr/local/etc/php/php.ini
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apk --update --no-cache add \
  curl \
  libzip-dev \
  libpng-dev \
  autoconf \
  gcc \
  g++ \
  make \
  git \
  bash \
  icu-dev \
  oniguruma-dev \
  nodejs \
  npm && \
  rm -rf /var/cache/apk/* && \
  git clone https://github.com/phpredis/phpredis.git /usr/src/php/ext/redis && \
  docker-php-ext-install \
  pdo_mysql \
  bcmath \
  mbstring \
  zip \
  opcache \
  gd \
  intl \
  redis

WORKDIR /app
