#!/bin/bash
# Tested using bash version 4.1.5
for ((i=1;i<=1000;i++)); 
do 
   # your-unix-command-here
    mosquitto_pub -h $MOSQUITTO_SERVER -t "test" -m "Hello from $HOSTNAME-$i" -i $HOSTNAME-$i
done

