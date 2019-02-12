#!/bin/sh
if [ "$1" = "postfix" ]; then
  postconf queue_directory=/var/spool/postfix maillog_file=/dev/stdout
  if [ -n "$RELAYHOST" ]; then
    postconf "relayhost=$RELAYHOST"
  fi
  exec /usr/libexec/postfix/master -i
else
  exec $@
fi
