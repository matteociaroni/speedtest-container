FROM debian:stable
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install wget
RUN wget https://install.speedtest.net/app/cli/ookla-speedtest-1.1.1-linux-x86_64.tgz
RUN tar -xvzf ookla-speedtest-1.1.1-linux-x86_64.tgz
RUN mv speedtest /usr/bin/speedtest
RUN speedtest --accept-gdpr --accept-license
CMD speedtest -s $SERVER_ID
