FROM jeanblanchard/busybox-java:7

MAINTAINER guenter.grossberger@ca.com

WORKDIR /opt/introscope-install

### For new Introscope version you must change the following variables
ENV INTROSCOPE_VERSION=10.0.0.12
ENV INTROSCOPE_BUILD=10.0.0-ISCP/build-990010\(${INTROSCOPE_VERSION}\)
### End for new Introscope version

ENV INTROSCOPE_HOME=/opt/CA/Introscope
ENV TRUSS_URL=http://truss.ca.com/builds/InternalBuilds
ENV INTROSCOPE_TAR=introscope${INTROSCOPE_VERSION}other.tar
ENV INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}otherUnix.jar
ENV INTROSCOPE_OSGI=osgiPackages.v${INTROSCOPE_VERSION}.unix.tar

ENV HEAP_XMX **DEFAULT**
# if used within Cluster select "Collector", "MOM" or "CDV"
ENV CLUSTER_ROLE **NONE**

#RUN wget ${TRUSS_URL}/${INTROSCOPE_BUILD}/introscope${INTROSCOPE_VERSION}${ACC_PACKAGE}
#RUN tar xvopf ${ACC_PACKAGE}### End for new Introscope version

ADD SampleResponseFile.Introscope.txt /opt/introscope-install/SampleResponseFile.Introscope.txt
ADD ${INTROSCOPE_BIN} /opt/introscope-install/${INTROSCOPE_BIN}
COPY ${INTROSCOPE_OSGI} /opt/introscope-install/${INTROSCOPE_OSGI}
ADD eula-osgi/eula.txt /opt/introscope-install/eula-osgi/eula.txt
ADD eula-introscope/ca-eula.txt /opt/introscope-install/eula-introscope/ca-eula.txt
ADD startup.sh /opt/introscope-install/startup.sh
#ADD addons /opt/introscope-install/addons

RUN chmod +x startup.sh
RUN java -jar ${INTROSCOPE_BIN} -f SampleResponseFile.Introscope.txt

# Port used by Enterprise Manager to listen for incoming connections.
EXPOSE 5001
# Port used by Enterprise Manager to serve web applications.
EXPOSE 8081


VOLUME ${INTROSCOPE_HOME}/data
VOLUME ${INTROSCOPE_HOME}/traces

CMD /opt/introscope-install/startup.sh
