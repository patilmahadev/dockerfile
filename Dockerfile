FROM ubuntu:14.04

RUN apt-get update && apt-get install apache2 -y

COPY index.html /var/www/html/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
