FROM alpine:3.9

RUN apk update \
 && apk add dhcp dhcp-doc perl dumb-init mdocml

COPY util/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
