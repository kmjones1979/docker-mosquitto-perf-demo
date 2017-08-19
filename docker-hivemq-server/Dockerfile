#
# HiveMQ Dockerfile
#
 
# Pull base image. The official docker openjdk-8 image is used here.
FROM java:8-jdk

# Add hivemq
ADD hivemq.zip /tmp/hivemq.zip
 
#Install wget and unzip, then download and install HiveMQ.
RUN apt-get install -y unzip && \
    unzip /tmp/hivemq.zip -d /opt/ && \
    mv /opt/hivemq-* /opt/hivemq
  
# Define working directory.
WORKDIR /opt/hivemq
 
# Define HIVEMQ_HOME variable
ENV HIVEMQ_HOME /opt/hivemq

# Add license 
ADD hivemq.lic /opt/hivemq/license/hivemq.lic

# Expose MQTT port
EXPOSE 1883
 
# Define default command. Here we use HiveMQ's run script.
CMD ["/opt/hivemq/bin/run.sh"]
