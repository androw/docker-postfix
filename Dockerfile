FROM alpine:edge
MAINTAINER Nicolas Lorin <androw95220@gmail.com>

RUN apk add --update --no-cache postfix=3.7.4-r0
COPY ./aliases.lmdb /etc/postfix/aliases.lmdb
RUN chown root:root /etc/postfix/aliases.lmdb && chmod 644 /etc/postfix/aliases.lmdb

EXPOSE 25

CMD ["/usr/sbin/postfix", "start-fg"]
