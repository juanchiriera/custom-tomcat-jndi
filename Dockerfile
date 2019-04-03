FROM registry.access.redhat.com/jboss-webserver-3/webserver31-tomcat7-openshift:1.2


#Copy jars SqlServer Drivers
COPY jars/jtds-1.2.7.jar /opt/webserver/lib/jtds-1.2.7.jar
COPY jars/jtds-1.3.1.jar /opt/webserver/lib/jtds-1.3.1.jar
COPY jars/sqljdbc.jar /opt/webserver/lib/sqljdbc.jar
COPY jars/sqljdbc4-2.0 2.jar /opt/webserver/lib/sqljdbc4-2.0 2.jar
COPY jars/sqljdbc4-2.0.jar /opt/webserver/lib/sqljdbc4-2.0.jar
COPY jars/sqljdbc4.jar /opt/webserver/lib/sqljdbc4.jar

#Conf Webserver JNDI
COPY conf/server.xml /opt/webserver/conf/server.xml
COPY conf/context.xml /opt/webserver/conf/context.xml

