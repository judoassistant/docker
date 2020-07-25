FROM ubuntu:focal

# Environment Variables
ENV POSTGRES_DB db
ENV POSTGRES_USER judoassistant
ENV POSTGRES_PASSWORD judoassistant
ENV POSTGRES_HOST db
ENV THREAD_COUNT 2
ENV TZ=Europe/Copenhagen

# Configure timezone
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
RUN echo $TZ > /etc/timezone

# Update and install packages
RUN apt-get update
RUN apt-get install -y libzstd1 libbotan-2-12 libpqxx-6.4 libssl1.1 libboost-date-time1.71.0 libboost-filesystem1.71.0 libboost-system1.71.0 libboost-program-options1.71.0

VOLUME ["/var/judoassistant"]

# TCP Socket Port
EXPOSE 9000

# Websocket Port
EXPOSE 9001

# Copy Files
COPY build-web/judoassistant-web /usr/bin/judoassistant-web
COPY build-web/docker/web/wrapper.sh /usr/bin/judoassistant-web-wrapper.sh
COPY data/example-server-config.cfg /etc/judoassistant/config.cfg

# Entry point
ENTRYPOINT ["/usr/bin/judoassistant-web-wrapper.sh"]

