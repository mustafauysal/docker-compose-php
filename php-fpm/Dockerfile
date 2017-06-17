FROM phpdockerio/php71-fpm:latest

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install vim php7.1-memcache php7.1-mysql php-redis php7.1-bcmath php7.1-gd php7.1-gmp php7.1-imap php-pear php7.1-cli php7.1-exif php7.1-fpm php7.1-gd php7.1-mbstring \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*


RUN usermod -u 33 www-data
RUN usermod -G 33  www-data

WORKDIR "/var/www"