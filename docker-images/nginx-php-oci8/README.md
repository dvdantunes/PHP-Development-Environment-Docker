# nginx-php-oci8

Imagen docker corriendo nginx + PHP 5.6 FPM + oci8.

## Construir la imagen

Para construir la imagen, es necesario descargar el sdk y cliente de oracle (Usamos `instantclient-basic-linux.x64-12.1.0.2.0.zip` y `instantclient-sdk-linux.x64-12.1.0.2.0.zip`) y dejarlos en el directorio `oracle/`.

~~~bash
cd oracle
wget -q https://s3.amazonaws.com/pkgr-public/instantclient-basic-linux.x64-12.1.0.2.0.zip
wget -q https://s3.amazonaws.com/pkgr-public/instantclient-sdk-linux.x64-12.1.0.2.0.zip
~~~

Luego, se procede a construir la imagen:

~~~bash
docker build -t nginx-php-oci8 .
~~~
