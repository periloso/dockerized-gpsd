A very simple gpsd daemon, listening on ports 2947 (tcp and udp).

A docker-compose file is also shipped.

To start it, you can just run `docker-compose up -d` :-)

To test it, you can connect to it by issuing: `telnet localhost 2947`, and writing:
```
?WATCH={"enable":true,"nmea":true}
```
