FROM registry.access.redhat.com/jboss-webserver-3/webserver31-tomcat7-openshift:1.2


#Copy jars SqlServer Drivers
COPY jars/ /opt/webserver/lib/
COPY jars/ /opt/webserver/lib/

#Conf Webserver JNDI
COPY conf/server.xml /opt/webserver/conf/server.xml
COPY conf/context.xml /opt/webserver/conf/server.xml

