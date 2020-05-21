# we are extending everything from tomcat:8.0 image ...
FROM tomcat:8.0
MAINTAINER ram
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
#COPY **/*.war /usr/local/tomcat/webapps/
copy hippo-app/target/hippo-app.war /usr/local/tomcat/webapps/
EXPOSE 7070
