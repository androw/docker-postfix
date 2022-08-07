FROM alpine:edge
MAINTAINER Nicolas Lorin <androw95220@gmail.com>

RUN apk add --update --no-cache postfix

CMD ["/usr/sbin/postfix", "start-fg"]
