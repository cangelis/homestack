ARG IMAGE_VERSION

FROM elasticsearch:${IMAGE_VERSION}

ARG BUILD_VERSION

COPY build /tmp/build
COPY elasticsearch/${BUILD_VERSION}/build /tmp/user_build
RUN chmod -R a+x /tmp/build/scripts
RUN /bin/sh /tmp/build/scripts/run_custom_install.sh
RUN rm -rf /tmp/*
