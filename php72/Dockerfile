FROM php:7.2-fpm-alpine

RUN apk update \
    && apk upgrade \
    && apk add --no-cache openssl \
    && apk add --no-cache bash \
    && apk add --update nodejs npm \
    && apk add libmcrypt-dev libzip-dev libpng-dev \
    && apk add nano git \
    && apk add --update supervisor \
    && apk add gcc g++ autoconf libc-dev make linux-headers

RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted gnu-libiconv
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php

COPY supervisord.conf /etc/supervisord.conf

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
	&& php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
	&& rm composer-setup.php

RUN pecl install grpc \
	&& docker-php-ext-enable grpc 

RUN docker-php-ext-install pdo_mysql \
	&& docker-php-ext-install zip \
	&& docker-php-ext-install gd \
	&& docker-php-ext-install bcmath \
	&& docker-php-ext-install opcache

CMD ["/usr/bin/supervisord"]
