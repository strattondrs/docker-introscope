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

COPY eula-introscope/ca-eula.txt SampleResponseFile.Introscope.txt /opt/introscope-install/

# run the installer
RUN chmod +x ${INTROSCOPE_BIN} && \
    ./${INTROSCOPE_BIN} -f SampleResponseFile.Introscope.txt ; \
 ls ${INTROSCOPE_HOME}/CommandCenterServer/apmccsrv.sh



FROM jeanblanchard/alpine-glibc
# target image

MAINTAINER guenter.grossberger@ca.com

ENV INTROSCOPE_HOME=/opt/CA/Introscope

WORKDIR ${INTROSCOPE_HOME}/CommandCenterServer

COPY --from=install ${INTROSCOPE_HOME}/* ./

EXPOSE 8888 8443
#EXPOSE 8088

# You may wish to keep these paths on volumes to keep data persistent
# across containers invocations.
#VOLUME ["${INTROSCOPE_HOME}/CommandCenterServer/data", \
#		"${INTROSCOPE_HOME}/CommandCenterServer/import", \
#		"${INTROSCOPE_HOME}/CommandCenterServer/bundle", \
#		"${INTROSCOPE_HOME}/CommandCenterServer/config", \
#		"${INTROSCOPE_HOME}/CommandCenterServer/logs"]

CMD ["./apmccsrv.sh", "console"]
