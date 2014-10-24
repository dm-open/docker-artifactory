FROM dockerfile/java:oracle-java7
MAINTAINER Mark Smithson mark@digital-morphosis.com
RUN apt-get update
RUN apt-get upgrade -y
ENV REFRESHED_AT 2014-10-24

RUN wget -O /tmp/artifactory-3.4.1.zip http://dl.bintray.com/jfrog/artifactory/artifactory-3.4.1.zip

RUN unzip /tmp/artifactory-3.4.1.zip -d /opt/

RUN ln -s /opt/artifactory-3.4.1 /opt/artifactory

VOLUME /opt/artifactory/data
VOLUME /opt/artifactory/logs
VOLUME /opt/artifactory/backup

CMD /opt/artifactory/bin/artifactory.sh

EXPOSE 8081