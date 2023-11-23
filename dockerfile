FROM ubuntu:latest
MAINTAINER sher <qsmvelmonte01@tip.edu.ph>

# skipping prompts
ARG DEBIAN_FRONTEND=noninteractive

# updating packages
RUN apt update
RUN apt upgrade -y

# installing packages
RUN apt-get install -y apache2 mariadb-server

# setting up entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND
