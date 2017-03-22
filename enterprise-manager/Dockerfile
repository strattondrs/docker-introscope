FROM jeanblanchard/java:7

MAINTAINER guenter.grossberger@ca.com

WORKDIR /opt/introscope-install

### For new Introscope version you must change the following variables
ENV INTROSCOPE_VERSION=10.5.1.8
### End for new Introscope version

ENV INTROSCOPE_HOME=/opt/CA/Introscope \
    INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}linuxAMD64.bin

COPY ${INTROSCOPE_BIN} /opt/introscope-install/${INTROSCOPE_BIN}
COPY eula-introscope/ca-eula.txt /opt/introscope-install/eula-introscope/ca-eula.txt
COPY SampleResponseFile.Introscope.txt /opt/introscope-install/SampleResponseFile.Introscope.txt
COPY startup.sh /opt/introscope-install/startup.sh
#COPY addons /opt/introscope-install/addons

# run the installer
RUN ./${INTROSCOPE_BIN} -f SampleResponseFile.Introscope.txt && \
    chmod +x startup.sh

#RUN apk add --update libstdc++

# if used within Cluster select "Collector", "MOM" or "CDV"
ENV CLUSTER_ROLE **NONE** \
    REST_API_ENABLE TRUE \
    HEAP_XMX **DEFAULT**

COPY em-jetty-config.xml ${INTROSCOPE_HOME}/config/em-jetty-config.xml

RUN keytool -genkey -keyalg RSA -alias jettyssl \
    -keystore ${INTROSCOPE_HOME}/config/internal/server/keystore \
    -storepass password -keypass password -validity 7300 -dname "CN=docker-em.ca.com" \
  && keytool -export -alias jettyssl \
    -keystore ${INTROSCOPE_HOME}/config/internal/server/keystore \
    -storepass password -file ${INTROSCOPE_HOME}/config/internal/server/jettyssl.crt

WORKDIR ${INTROSCOPE_HOME}

# Ports used by Enterprise Manager to listen for incoming connections (5001),
# to serve web applications (8081) and public REST API (8444)
EXPOSE 5001 8081 8444

VOLUME ["${INTROSCOPE_HOME}/data", "${INTROSCOPE_HOME}/traces"]

CMD /opt/introscope-install/startup.sh
