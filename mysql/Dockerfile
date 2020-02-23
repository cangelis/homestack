ARG BUILD_VERSION

FROM mysql:${BUILD_VERSION}

ARG BUILD_VERSION

COPY build /tmp/build
COPY mysql/${BUILD_VERSION}/build /tmp/user_build
RUN chmod -R a+x /tmp/build/scripts
RUN /bin/sh /tmp/build/scripts/run_custom_install.sh
RUN rm -rf /tmp/*

CMD ["mysqld"]