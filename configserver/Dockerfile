FROM jeanblanchard/java:7

MAINTAINER guenter.grossberger@ca.com

WORKDIR /opt/introscope-install

### For new Introscope version you must change the following variables
ENV INTROSCOPE_VERSION=10.5.2.7
### End for new Introscope version

ENV INTROSCOPE_HOME=/opt/CA/Introscope \
    INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}linuxAMD64.bin

COPY ${INTROSCOPE_BIN} /opt/introscope-install/${INTROSCOPE_BIN}
COPY eula-introscope/ca-eula.txt /opt/introscope-install/eula-introscope/ca-eula.txt
COPY SampleResponseFile.Introscope.txt /opt/introscope-install/SampleResponseFile.Introscope.txt

# run the installer
RUN ./${INTROSCOPE_BIN} -f SampleResponseFile.Introscope.txt ; \
 ls ${INTROSCOPE_HOME}/CommandCenterServer/apmccsrv.sh

WORKDIR ${INTROSCOPE_HOME}/CommandCenterServer

EXPOSE 8888 8443
#EXPOSE 8088

# You may wish to keep these paths on volumes to keep data persistent
# across containers invokations.
#VOLUME ["${INTROSCOPE_HOME}/CommandCenterServer/data", \
#		"${INTROSCOPE_HOME}/CommandCenterServer/import", \
#		"${INTROSCOPE_HOME}/CommandCenterServer/bundle", \
#		"${INTROSCOPE_HOME}/CommandCenterServer/config", \
#		"${INTROSCOPE_HOME}/CommandCenterServer/logs"]

CMD ["./apmccsrv.sh", "console"]
