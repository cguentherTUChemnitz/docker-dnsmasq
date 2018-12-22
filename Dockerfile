FROM alpine:edge
RUN apk update && \
    apk upgrade && \
    apk add --update-cache dnsmasq && \
    rm -rf /var/cache/apk/*
EXPOSE 53 53/udp
VOLUME /etc/dnsmasq.d/
ENTRYPOINT ["dnsmasq", "-k", "--log-facility=-"]

#--local-service
