FROM pperez/nginx-php:latest
MAINTAINER Patricio Pérez <pperez@boaboa.org>

ADD oracle/instantclient-basic-linux.x64-12.1.0.2.0.zip /tmp/instantclient-basic-linux.x64-12.1.0.2.0.zip
ADD oracle/instantclient-sdk-linux.x64-12.1.0.2.0.zip /tmp/instantclient-sdk-linux.x64-12.1.0.2.0.zip

RUN apt-get update && apt-get install -y wget php-pear php5-dev libaio1 curl
RUN unzip /tmp/instantclient-basic-linux.x64-12.1.0.2.0.zip -d /usr/local/ \
    && rm /tmp/instantclient-basic-linux.x64-12.1.0.2.0.zip \
    && unzip /tmp/instantclient-sdk-linux.x64-12.1.0.2.0.zip -d /usr/local/ \
    && ln -s /usr/local/instantclient_12_1/ /usr/local/instantclient \
    && ln -s /usr/local/instantclient/libclntsh.so.12.1 /usr/local/instantclient/libclntsh.so \
    && echo 'instantclient,/usr/local/instantclient' | pecl install oci8 \
    && rm /tmp/instantclient-*.zip
RUN echo 'extension=oci8.so' > /etc/php5/mods-available/oci8.ini \
    && php5enmod oci8
