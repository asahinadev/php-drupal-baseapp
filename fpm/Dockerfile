FROM php:7.4-fpm

ENV DEBCONF_NOWARNINGS yes

# apt-get update
RUN apt-get -y update

# apt-get install
RUN apt-get install -y procps apt-utils iproute2

# php-intl
RUN php -m \
  # apt-get install
  && apt-get install -y libicu-dev \
  # docker-php-ext-install
  && docker-php-ext-install intl
# php-exif
RUN php -m\
  # docker-php-ext-install
  && docker-php-ext-install exif
# php-zip
RUN php -m\
  && apt-get -y install libzip-dev zlib1g-dev \
  # docker-php-ext-install
  && docker-php-ext-install zip
# php-gd
RUN php -m\
  # apt-get install
  && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev libwebp-dev \
  # docker-php-ext-configure
  && docker-php-ext-configure gd --with-freetype --with-webp --with-jpeg \
  # docker-php-ext-install
  && docker-php-ext-install gd
# php-opcache
RUN docker-php-ext-enable opcache
# php-mysqli
RUN php -m \
  # docker-php-ext-install mysqli
  && docker-php-ext-install  mysqli pdo_mysql