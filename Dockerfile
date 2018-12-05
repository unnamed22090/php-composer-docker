FROM ubuntu:18.04 AS Ubuntu

RUN apt update
RUN apt upgrade -y

ARG time_zone
ENV TIME_ZONE=$time_zone

RUN ln -snf /usr/share/zoneinfo/$TIME_ZONE /etc/localtime && \
  echo $TIME_ZONE > /etc/timezone

RUN apt install -y \
  curl \
  gnupg \
  gnupg2 \
  gnupg1 \
  nano \
  zip \
  unzip

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt install -y nodejs \
  build-essential

RUN apt install -y \
  php7.2 \
  php7.2-bcmath \
  php7.2-bz2 \
  php7.2-cgi \
  php7.2-cli \
  php7.2-common \
  php7.2-curl \
  php7.2-dba \
  php7.2-dev \
  php7.2-enchant \
  php7.2-fpm \
  php7.2-gd \
  php7.2-gmp \
  php7.2-imap \
  php7.2-interbase \
  php7.2-intl \
  php7.2-json \
  php7.2-ldap \
  php7.2-mbstring \
  php7.2-mysql \
  php7.2-odbc \
  php7.2-opcache \
  php7.2-pgsql \
  php7.2-phpdbg \
  php7.2-pspell \
  php7.2-readline \
  php7.2-recode \
  php7.2-snmp \
  php7.2-soap \
  php7.2-sqlite3 \
  php7.2-sybase \
  php7.2-tidy \
  php7.2-xml \
  php7.2-xmlrpc \
  php7.2-xsl \
  php7.2-zip

RUN apt install -y \
  php-amqp \
  php-analog \
  php-apcu \
  php-ast \
  php-auth-sasl \
  php-bcmath \
  php-bz2 \
  php-cgi \
  php-cli \
  php-codecoverage \
  php-common \
  php-curl \
  php-date \
  php-db \
  php-doctrine-orm \
  php-email-validator \
  php-enchant \
  php-enum \
  php-finder-facade \
  php-font-lib \
  php-fpm \
  php-gd \
  php-geoip \
  php-guzzlehttp-promises \
  php-http \
  php-imagick \
  php-imap \
  php-interbase \
  php-intl \
  php-json \
  php-ldap \
  php-log \
  php-luasandbox \
  php-mail \
  php-mail-mime \
  php-mailparse \
  php-markdown \
  php-mbstring \
  php-mdb2 \
  php-mdb2-driver-mysql \
  php-mdb2-driver-pgsql \
  php-memcache \
  php-mime-type \
  php-mongodb \
  php-monolog \
  php-mysql \
  php-nrk-predis \
  php-numbers-words \
  php-oauth \
  php-odbc \
  php-parser \
  php-patchwork-utf8 \
  php-pclzip \
  php-pear \
  php-pecl-http \
  php-pgsql \
  php-phar-io-manifest \
  php-phar-io-version \
  php-php-gettext \
  php-phpdbg \
  php-phpseclib \
  php-proxy-manager \
  php-ps \
  php-radius \
  php-react-promise \
  php-readline \
  php-recode \
  php-redis \
  php-sass \
  php-services-json \
  php-services-weather \
  php-smbclient \
  php-snmp \
  php-soap \
  php-sql-formatter \
  php-sqlite3 \
  php-ssh2 \
  php-stomp \
  php-swiftmailer \
  php-sybase \
  php-symfony \
  php-tidy \
  php-timer \
  php-uuid \
  php-validate \
  php-xdebug \
  php-xml \
  php-yaml \
  php-zend-code \
  php-zend-db \
  php-zend-eventmanager \
  php-zend-hydrator \
  php-zend-stdlib \
  php-zip

RUN apt install -y composer