FROM jeanblanchard/busybox-java:7

MAINTAINER sieglst@googlemail.com / stefan.siegl@novatec-gmbh.de

### For new Introscope version you must change the following variables
ENV INTROSCOPE_VERSION=10.7.0.197
### End for new Introscope version

ENV EM_HOST=localhost EM_PORT=5001

WORKDIR /opt/install

ADD EPAgent${INTROSCOPE_VERSION}unix.tar /opt/introscope-epagent
ADD IntroscopeEPAgent.properties /opt/introscope-epagent/epagent/
ADD readFilesytemSpace.sh /opt/introscope-epagent/epagent/epaplugins/readFilesytemSpace.sh
ADD startup.sh /opt/install/startup.sh

RUN chmod +x startup.sh
RUN chmod +x /opt/introscope-epagent/epagent/epaplugins/readFilesytemSpace.sh

EXPOSE 8080

CMD /opt/install/startup.sh
