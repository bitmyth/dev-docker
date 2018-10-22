FROM ubuntu:18.04
RUN sed -i 's|archive.ubuntu.com|mirrors.163.com|g' /etc/apt/sources.list
RUN apt-get update --fix-missing
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    build-essential apt-utils wget curl git vim iproute2
COPY .ssh /root/.ssh
