FROM alpine:3.9

RUN apk update \
 && apk add dhcp dumb-init

COPY util/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
