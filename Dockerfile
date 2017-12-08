
# Base
FROM offtechnologies/docker-arm32v6-base-image-alpine-qemu:latest

ENV MARIADB_VERSION 10.1.28-r1
# ENV LC_ALL=us_US.UTF-8 \

RUN apk update \
    && apk add mariadb=${MARIADB_VERSION} mariadb-client=${MARIADB_VERSION} \
    && sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf \
    && echo -e 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf \
    && mv /tmp/my.cnf /etc/mysql/my.cnf \
    && rm -rf \
          /tmp/* \
          /var/cache/apk/*

VOLUME /var/lib/mysql
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 3306
