FROM alpine
RUN apk add openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin
FROM php:7.3-apache-stretch
RUN set -eux; apt-get update; apt-get install -y libzip-dev zlib1g-dev; docker-php-ext-install zip
RUN apt-get install -y libpng-dev
RUN docker-php-ext-install gd
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install mysqli



