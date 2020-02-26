FROM centos:7

COPY . /var/tmp

RUN mv /var/tmp/docker-entrypoint.sh /usr/local/bin; \
    chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD [ "echo", "Hello World"]