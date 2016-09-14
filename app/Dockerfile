FROM php:7.0.9-fpm

RUN apt-get update \
  && apt-get install -y \
    libfreetype6-dev \
    libicu-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng12-dev \
    libxslt1-dev \
    git \
    vim \
    wget \
    lynx \
    psmisc \
  && apt-get clean

RUN docker-php-ext-configure \
    gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/; \
  docker-php-ext-install \
    gd \
    intl \
    mbstring \
    mcrypt \
    pdo_mysql \
    xsl \
    zip \
    opcache

RUN curl -sS https://getcomposer.org/installer | \
    php -- \
      --install-dir=/usr/local/bin \
      --filename=composer \
      --version=1.1.2

RUN mkdir /opt/magento
#USER www-data
WORKDIR /opt/magento
CMD setup.sh