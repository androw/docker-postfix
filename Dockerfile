FROM alpine:edge
MAINTAINER Nicolas Lorin <androw95220@gmail.com>

RUN apk add --update --no-cache postfix=3.7.2-r3

EXPOSE 25

CMD ["/usr/sbin/postfix", "start-fg"]
