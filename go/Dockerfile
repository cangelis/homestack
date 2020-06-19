ARG BUILD_VERSION

FROM golang:${BUILD_VERSION}-alpine

ARG BUILD_VERSION

RUN apk update && apk upgrade

RUN apk add --no-cache openssl

COPY build /tmp/build
COPY go/${BUILD_VERSION}/build /tmp/user_build
RUN chmod -R a+x /tmp/build/scripts

# Setup supervisor
RUN BUILD_FOLDER=/tmp/build /bin/sh /tmp/build/scripts/alpine/supervisor.sh
COPY build/config/supervisor/crond.conf /etc/supervisord.d/sys/crond.conf

# Run user's .install script
RUN /bin/sh /tmp/build/scripts/run_custom_install.sh

RUN rm -rf /tmp/*

CMD ["supervisord", "-c", "/etc/supervisord.conf"]
