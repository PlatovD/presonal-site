FROM tomcat:10.1-jdk17
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/resume.war /usr/local/tomcat/webapps/ROOT.war

ARG WAR_FILE=target/resume.war
COPY ${WAR_FILE} /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]



