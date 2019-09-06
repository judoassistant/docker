FROM ubuntu:disco

RUN apt-get update
RUN apt-get install -y libzstd1 libbotan-2-9 libpqxx-6.2 libssl1.1 libboost-filesystem1.67.0 libboost-system1.67.0 libboost-program-options1.67.0

VOLUME ["/var/judoassistant"]

# TCP Socket Port
EXPOSE 9000

# Websocket Port
EXPOSE 9001

# Environment Variables
ENV POSTGRES_DB db
ENV POSTGRES_USER judoassistant
ENV POSTGRES_PASSWORD judoassistant
ENV POSTGRES_HOST db
ENV THREAD_COUNT 2

# Copy Files
COPY build-web/judoassistant-web /usr/bin/judoassistant-web
COPY data/example-server-config.cfg /etc/judoassistant/config.cfg

# Entry point
ENTRYPOINT ["/usr/bin/judoassistant-web"]
CMD ["--workers", "${THREAD_COUNT}", "--postgres", "host=${POSTGRES_HOST} user=${POSTGRES_USER} password=${POSTGRES_PASSWORD} dbname=${POSTGRES_DB}"]

