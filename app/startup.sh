#!/bin/sh

if [ ! -e composer.phar ]; then
  php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
  php composer-setup.php
  RUN php -r "unlink('composer-setup.php');"
fi

Rphp composer.phar install


php -a