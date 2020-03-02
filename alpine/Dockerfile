ARG BUILD_VERSION

FROM alpine:${BUILD_VERSION}

ARG BUILD_VERSION

COPY build /tmp/build
COPY alpine/${BUILD_VERSION}/build /tmp/user_build
RUN chmod -R a+x /tmp/build/scripts

# Setup supervisor
RUN BUILD_FOLDER=/tmp/build /bin/sh /tmp/build/scripts/alpine/supervisor.sh
COPY build/config/supervisor/crond.conf /etc/supervisord.d/sys/crond.conf

# Run .install
RUN /bin/sh /tmp/build/scripts/run_custom_install.sh
RUN rm -rf /tmp/*

CMD ["/usr/bin/supervisord"]