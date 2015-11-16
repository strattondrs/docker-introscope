FROM jeanblanchard/busybox-java:7

MAINTAINER guenter.grossberger@ca.com

WORKDIR /opt/introscope-install

### For new Introscope version you must change the following variables
ENV INTROSCOPE_VERSION=10.1.0.15
### End for new Introscope version

ENV INTROSCOPE_HOME=/opt/CA/Introscope
ENV INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}otherUnix.jar
ENV INTROSCOPE_OSGI=osgiPackages.v${INTROSCOPE_VERSION}.unix.tar

ENV HEAP_XMX **DEFAULT**
# if used within Cluster select "Collector", "MOM" or "CDV"
ENV CLUSTER_ROLE **NONE**

COPY ${INTROSCOPE_OSGI} /opt/introscope-install/${INTROSCOPE_OSGI}
COPY ${INTROSCOPE_BIN} /opt/introscope-install/${INTROSCOPE_BIN}
COPY eula-osgi/eula.txt /opt/introscope-install/eula-osgi/eula.txt
COPY eula-introscope/ca-eula.txt /opt/introscope-install/eula-introscope/ca-eula.txt
COPY SampleResponseFile.Introscope.txt /opt/introscope-install/SampleResponseFile.Introscope.txt

RUN java -jar ${INTROSCOPE_BIN} -f SampleResponseFile.Introscope.txt
RUN rm -f ${INTROSCOPE_BIN} ${INTROSCOPE_OSGI}

COPY startup.sh /opt/introscope-install/startup.sh
COPY em-jetty-config.xml ${INTROSCOPE_HOME}/config/em-jetty-config.xml
COPY jettyssl.crt ${INTROSCOPE_HOME}/config/internal/server/jettyssl.crt

#COPY addons /opt/introscope-install/addons
RUN chmod +x startup.sh

WORKDIR ${INTROSCOPE_HOME}

# Port used by Enterprise Manager to listen for incoming connections.
EXPOSE 5001
# Port used by Enterprise Manager to serve web applications.
EXPOSE 8081
# Port used by Enterprise Manager public REST API
EXPOSE 8444


VOLUME ${INTROSCOPE_HOME}/data
VOLUME ${INTROSCOPE_HOME}/traces

CMD /opt/introscope-install/startup.sh
