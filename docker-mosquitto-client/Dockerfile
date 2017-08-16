FROM ubuntu:16.04

MAINTAINER "Kevin Jones - <kevin@nginx.com>"

ENV MOSQUITTO_SERVER 198.199.118.131

ADD sysctl.conf /etc/sysctl.conf
ADD limits.conf /etc/security/limits.conf

RUN apt-get update
RUN apt-get install -y mosquitto mosquitto-clients

ADD init.sh /init.sh
RUN chmod u+x /init.sh

CMD [ "./init.sh" ]
