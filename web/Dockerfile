FROM ubuntu:disco

RUN apt-get update
RUN apt-get install -y libzstd1 libbotan-2-9 libpqxx-6.2

VOLUME ["/var/judoassistant"]

# TCP Socket Port
EXPOSE 9000

# Websocket Port
EXPOSE 9001

COPY build-web/judoassistant-web /usr/bin/judoassistant-web
COPY data/example-server-config.cfg /etc/judoassistant/config.cfg

ENTRYPOINT ["/usr/bin/judoassistant-web"]
CMD ["--help"]
