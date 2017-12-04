FROM jeanblanchard/alpine-glibc

MAINTAINER guenter.grossberger@ca.com

WORKDIR /opt/introscope-install

### For new Introscope version you must change the following variables
ENV INTROSCOPE_VERSION=10.5.2.24
### End for new Introscope version

ENV INTROSCOPE_HOME=/opt/CA/Introscope \
    INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}linuxAMD64.bin \
    EM_HOST=em \
    EM_PORT=5001 \
    EM_WEB_PORT=8081 \
    AGENT_HOSTNAME=webview \
    HEAP_XMX=**DEFAULT**

COPY ${INTROSCOPE_BIN} /opt/introscope-install/${INTROSCOPE_BIN}
COPY eula-introscope/ca-eula.txt /opt/introscope-install/eula-introscope/ca-eula.txt
COPY SampleResponseFile.Introscope.txt /opt/introscope-install/SampleResponseFile.Introscope.txt
COPY startup.sh /opt/introscope-install/startup.sh
#COPY addons /opt/introscope-install/addons

# run the installer
RUN ./${INTROSCOPE_BIN} -f SampleResponseFile.Introscope.txt && \
    chmod +x startup.sh

WORKDIR ${INTROSCOPE_HOME}

# install latest hotfix
COPY APM10.5.2.66XHF.jar ${INTROSCOPE_HOME}/APM10.5.2.66XHF.jar
RUN jre/bin/java -jar APM10.5.2.66XHF.jar

# Port on which WebView will listen for HTTP connections.
EXPOSE 8080

CMD /opt/introscope-install/startup.sh
