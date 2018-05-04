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

ENV INTROSCOPE_HOME=/opt/CA/Introscope \
    EM_HOST=em \
    EM_PORT=5001 \
    EM_WEB_PORT=8081 \
    AGENT_HOSTNAME=webview \
    HEAP_XMX=**DEFAULT**

WORKDIR ${INTROSCOPE_HOME}

COPY --from=install ${INTROSCOPE_HOME}/ ./
COPY startup.sh /opt/introscope-install/
#COPY addons /opt/introscope-install/addons

RUN chmod +x /opt/introscope-install/startup.sh

# Port on which WebView will listen for HTTP connections.
EXPOSE 8080

CMD /opt/introscope-install/startup.sh
