FROM alpine:3.17.2
LABEL maintainer "Alexander Kiryukhin i@neonxp.dev"

# Install
RUN apk --no-cache add bash curl minidlna tini shadow su-exec alpine-conf inotify-tools

# Entrypoint
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

EXPOSE 8200

ENTRYPOINT ["/sbin/tini", "--", "/entrypoint.sh"]