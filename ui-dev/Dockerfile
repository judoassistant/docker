FROM ubuntu:focal

# Environment variables
ENV TZ=Europe/Copenhagen

# Configure timezone
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
RUN echo $TZ > /etc/timezone

# Update and install packages
RUN apt-get update
RUN apt-get install -y ninja-build meson build-essential pkg-config ca-certificates git
RUN apt-get install -y libssl-dev libcereal-dev libzstd-dev libboost-filesystem-dev libboost-system-dev qtbase5-dev

