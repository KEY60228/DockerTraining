FROM alpine:3.12
ENV AUTHOR="KEY"
RUN apk update 
RUN apk add --no-cache curl php7 apache2 php7-fpm git openrc
RUN rc-status
RUN touch /run/openrc/softlevel
COPY ./index.php /var/www/localhost/htdocs/index.html