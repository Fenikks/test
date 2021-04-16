ARG VERSION=9.0

FROM tomcat:${VERSION}

ENV TEST 3


COPY openolat_1514.war /tmp/openolat_1514.war
COPY context.xml  /usr/local/tomcat/conf/context.xml
RUN unzip -d /usr/local/tomcat/webapps/openolat /tmp/openolat_1514.war 
RUN mkdir -p /opt/openolat
EXPOSE 8080
CMD ["catalina.sh", "run"]
