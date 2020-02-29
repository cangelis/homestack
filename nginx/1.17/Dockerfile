FROM nginx:1.17-alpine

RUN cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.original
COPY nginx/1.17/nginx.conf /etc/nginx/nginx.conf

RUN apk update && apk upgrade

RUN adduser -D -S -G www-data www-data

COPY build /tmp/build
COPY nginx/1.17/build /tmp/user_build
RUN chmod -R a+x /tmp/build/scripts
RUN /bin/sh /tmp/build/scripts/run_custom_install.sh
RUN rm -rf /tmp/*

CMD ["nginx"]