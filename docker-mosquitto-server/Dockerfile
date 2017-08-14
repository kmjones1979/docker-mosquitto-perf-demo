FROM eclipse-mosquitto:1.4.12
MAINTAINER Kevin Jones <kevin@nginx.com>

ADD sysctl.conf /etc/sysctl.conf
ADD limits.conf /etc/security/limits.conf
ADD mosquitto.conf /mosquitto/config/mosquitto.conf

RUN chmod +x /docker-entrypoint.sh

EXPOSE 1883 1884 9001

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
