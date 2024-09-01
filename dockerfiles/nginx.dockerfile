FROM nginx:stable-alpine

RUN apk update && apk add apache2-utils && htpasswd -b -c /etc/nginx/.htpasswd sumit 1234

WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

RUN mv nginx.conf default.conf

WORKDIR /var/www/html

COPY Jisho .