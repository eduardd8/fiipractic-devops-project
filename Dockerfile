FROM alpine:latest

RUN apk add --no-cache apache2

EXPOSE 8888

CMD ["httpd", "-DFOREGROUND"]


