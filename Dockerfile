FROM php:7.1.11-fpm-alpine
RUN echo http://mirrors.aliyun.com/alpine/v3.10/main>/etc/apk/repositories && \
echo  http://mirrors.aliyun.com/alpine/v3.10/community>>/etc/apk/repositories
RUN apk update && apk upgrade
RUN apk add m4 autoconf make gcc g++ linux-headers
RUN docker-php-ext-install pdo_mysql
CMD ["php-fpm"]
