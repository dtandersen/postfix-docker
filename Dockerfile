FROM alpine:3.13

RUN apk update && \
    apk add postfix

EXPOSE 25

CMD exec /usr/sbin/postfix -c /etc/postfix start-fg
