FROM jpizarrom/armv7hf-java-dockerhub:oracle-java7

ENV ZIGBEE_SERIALPORT /dev/ttyS4
ENV ZIGBEE_CHANNEL 15
ENV ZIGBEE_PAN 4568
ENV ZIGBEE_RESET false

RUN mkdir /app
COPY ./zigbee-console-javase-1.0.9-SNAPSHOT /app/zigbee-console-javase
WORKDIR /app

CMD ["bash"]

# CMD ["sh","-c","/app/zigbee-console-javase/bin/zigbee-console-javase $ZIGBEE_SERIALPORT $ZIGBEE_CHANNEL $ZIGBEE_PAN $ZIGBEE_RESET"]

