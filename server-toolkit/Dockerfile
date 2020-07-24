FROM ubuntu:focal

# Environment Variables
# ENV DATABASE_URL
ENV TZ=Europe/Copenhagen

# Configure timezone
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
RUN echo $TZ > /etc/timezone

# Update and install packages
RUN apt-get update
RUN apt-get install -y python3 python3-bcrypt python3-sqlalchemy

# Copy Files
COPY judoassistant.py /usr/bin/judoassistant.py

# Entry point
ENTRYPOINT ["/usr/bin/judoassistant.py"]
# CMD ["judoassistant.py" ]

