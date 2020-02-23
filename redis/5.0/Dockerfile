FROM redis:5.0-alpine

COPY build /tmp/build
COPY redis/5.0/build /tmp/user_build
RUN chmod -R a+x /tmp/build/scripts
RUN /bin/sh /tmp/build/scripts/run_custom_install.sh
RUN rm -rf /tmp/*

CMD ["redis-server"]