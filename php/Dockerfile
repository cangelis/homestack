ARG BUILD_VERSION

FROM php:${BUILD_VERSION}-fpm-alpine

ARG BUILD_VERSION

RUN apk update && apk upgrade

RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted gnu-libiconv
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php

RUN apk add --no-cache openssl

COPY build /tmp/build
COPY php/${BUILD_VERSION}/build /tmp/user_build
RUN chmod -R a+x /tmp/build/scripts

# Setup supervisor
RUN BUILD_FOLDER=/tmp/build /bin/sh /tmp/build/scripts/alpine/supervisor.sh
COPY build/config/supervisor/php-fpm.conf /etc/supervisord.d/sys/php-fpm.conf
COPY build/config/supervisor/crond.conf /etc/supervisord.d/sys/crond.conf

# Run user's .install script
RUN /bin/sh /tmp/build/scripts/run_custom_install.sh

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
	&& php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
	&& rm composer-setup.php

RUN rm -rf /tmp/*

CMD ["/usr/bin/supervisord"]
