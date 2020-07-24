FROM ubuntu:focal

# Environment Variables
# ENV DATABASE_URL
ENV TZ=Europe/Copenhagen

# Configure timezone
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
RUN echo $TZ > /etc/timezone

# Update and install packages
RUN apt-get update
RUN apt-get install -y alembic

# Entry point
WORKDIR /alembic
ENTRYPOINT ["/usr/bin/alembic"]
CMD ["--help" ]

