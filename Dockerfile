FROM alpine

RUN apk add --no-cache gpsd bash

EXPOSE 2947/tcp
EXPOSE 2947/udp

CMD ["/usr/sbin/gpsd", "-n", "-N", "-G", "-D5", "-S", "2947", "-F", "/var/run/gpsd.sock", "udp://0.0.0.0:2947"]
