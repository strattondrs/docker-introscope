FROM jeanblanchard/busybox-java:7

MAINTAINER guenter.grossberger@ca.com

WORKDIR /opt/introscope-install

### For new Introscope version you must change the following variables
ENV INTROSCOPE_VERSION=10.1.0.15
ENV INTROSCOPE_BUILD=10.1.0-ISCP/build-990012(${INTROSCOPE_VERSION})/introscope\(${INTROSCOPE_VERSION}\)
### End for new Introscope version

ENV INTROSCOPE_HOME=/opt/CA/Introscope
ENV INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}otherUnix.jar
ENV INTROSCOPE_OSGI=osgiPackages.v10.1.0.0.unix.tar

ENV HEAP_XMX **DEFAULT**

COPY ${INTROSCOPE_OSGI} /opt/introscope-install/${INTROSCOPE_OSGI}
COPY ${INTROSCOPE_BIN} /opt/introscope-install/${INTROSCOPE_BIN}
COPY eula-osgi/eula.txt /opt/introscope-install/eula-osgi/eula.txt
COPY eula-introscope/ca-eula.txt /opt/introscope-install/eula-introscope/ca-eula.txt
COPY startup.sh /opt/introscope-install/startup.sh
COPY SampleResponseFile.Introscope.txt /opt/introscope-install/SampleResponseFile.Introscope.txt
#COPY addons /opt/introscope-install/addons
RUN chmod +x startup.sh

# run the installation of WebView
RUN java -Xmx2048m -jar ${INTROSCOPE_BIN} -f SampleResponseFile.Introscope.txt
RUN rm -f ${INTROSCOPE_BIN} ${INTROSCOPE_OSGI}

WORKDIR ${INTROSCOPE_HOME}

# Port on which WebView will listen for HTTP connections.
EXPOSE 8080

CMD /opt/introscope-install/startup.sh
