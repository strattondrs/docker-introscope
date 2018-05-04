FROM jeanblanchard/alpine-glibc as install
# install image

WORKDIR /opt/introscope-install

### For new Introscope version you must change the following variables
ENV INTROSCOPE_VERSION=10.7.0.45 \
    INTROSCOPE_HOTFIX=10.7.0HF03
### End for new Introscope version

ENV INTROSCOPE_HOME=/opt/CA/Introscope \
    INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}linuxAMD64.bin

COPY ${INTROSCOPE_BIN} /opt/introscope-install/
COPY APM${INTROSCOPE_HOTFIX}.jar /opt/introscope-install/

COPY eula-introscope/ca-eula.txt SampleResponseFile.Introscope.txt /opt/introscope-install/

# run the installer and hotfix
RUN chmod +x ${INTROSCOPE_BIN} && \
    ./${INTROSCOPE_BIN} -f SampleResponseFile.Introscope.txt && \
    cd ${INTROSCOPE_HOME} && \
    jre/bin/java -jar /opt/introscope-install/APM${INTROSCOPE_HOTFIX}.jar



FROM jeanblanchard/alpine-glibc
# target image

MAINTAINER guenter.grossberger@ca.com

# if used within Cluster select "Collector", "MOM" or "CDV"
ENV INTROSCOPE_HOME=/opt/CA/Introscope \
    CLUSTER_ROLE=**NONE** \
    REST_API_ENABLE=TRUE \
    HEAP_XMX=**DEFAULT**

WORKDIR ${INTROSCOPE_HOME}

COPY --from=install ${INTROSCOPE_HOME}/ ./
COPY startup.sh /opt/introscope-install/
#COPY addons /opt/introscope-install/addons

RUN chmod +x /opt/introscope-install/startup.sh

#RUN apk add --update libstdc++

#COPY em-jetty-config.xml ${INTROSCOPE_HOME}/config/em-jetty-config.xml

#RUN jre/bin/keytool -genkey -keyalg RSA -alias jettyssl \
#    -keystore ${INTROSCOPE_HOME}/config/internal/server/keystore \
#    -storepass password -keypass password -validity 7300 -dname "CN=docker-em.ca.com" \
#  && jre/bin/keytool -export -alias jettyssl \
#    -keystore ${INTROSCOPE_HOME}/config/internal/server/keystore \
#    -storepass password -file ${INTROSCOPE_HOME}/config/internal/server/jettyssl.crt

# Ports used by Enterprise Manager to listen for incoming connections (5001),
# to serve web applications (8081) and public REST API (8444)
EXPOSE 5001 8081 8444

VOLUME ["${INTROSCOPE_HOME}/data", "${INTROSCOPE_HOME}/traces"]

CMD /opt/introscope-install/startup.sh
