# Copyright 2019, Development Gateway, see COPYING
FROM alpine:3.9

RUN apk add --no-cache postfix

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["postfix"]

VOLUME /var/spool/postfix

EXPOSE 25
