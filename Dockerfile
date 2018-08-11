# For reference only

FROM websphere-liberty:webProfile7
ADD target/GetStartedJava.war /opt/ibm/wlp/usr/servers/defaultServer/apps
RUN mkdir /opt/ibm/wlp/usr/shared/resources/db2
COPY drivers/db2/db2jcc4.jar /opt/ibm/wlp/usr/shared/resources/db2/
COPY src/main/liberty/config/server.xml /config/
ENV LICENSE accept
EXPOSE 9080
