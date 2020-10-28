FROM php:7.4-apache

LABEL maintainer="pkrolkgp"

ENV SEEDDMS_VERSION=6.0.13

RUN apt-get update && apt-get install -y apt-utils && apt-get install -my wget gnupg

RUN rm /etc/apt/preferences.d/no-debian-php && \
    apt-get update && \
    apt-get -q -y install \
    git \
    id3 \
    libpng-dev \
    imagemagick \
    docx2txt\
    libmcrypt-dev \
    php-pear \
    poppler-utils \
    catdoc \
    curl \
    php-json \
    php-ldap \
    php-mbstring \
    php-mysql \
    php-sqlite3 \
    php-xml \
    php-xsl \
    php-zip \
    php-soap \
    mariadb-client \
    libmariadb-dev \ 
    zlib1g-dev \
    libzip-dev \
    libxslt-dev \
    libicu-dev \
    libonig-dev \
    libldb-dev \
    libldap2-dev

RUN docker-php-ext-configure intl 

RUN docker-php-ext-install mysqli pdo pdo_mysql gd mbstring zip xsl intl ldap

RUN a2enmod php7 && a2enmod rewrite && a2enmod dav && a2enmod dav_fs

RUN curl -L https://sourceforge.net/projects/seeddms/files/seeddms-$SEEDDMS_VERSION/seeddms-quickstart-$SEEDDMS_VERSION.tar.gz/download > seeddms-quickstart-$SEEDDMS_VERSION.tar.gz

RUN tar xvzf seeddms-quickstart-$SEEDDMS_VERSION.tar.gz --directory /var/www 

COPY configs/php.ini /usr/local/etc/php/
COPY configs/000-default.conf /etc/apache2/sites-available/
COPY configs/settings.xml /var/www/seeddms60x/conf/settings.xml
COPY startup.sh /

EXPOSE 80
