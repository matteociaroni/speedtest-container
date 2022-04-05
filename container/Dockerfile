FROM debian:latest
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install curl
RUN curl -s https://install.speedtest.net/app/cli/install.deb.sh | bash
RUN apt-get -y install speedtest
RUN speedtest --accept-gdpr --accept-license
CMD speedtest
