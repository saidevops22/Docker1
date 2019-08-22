

FROM centos

MAINTAINER Saiteja saiteja.deeti22@gmail.com
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl -o https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.43/bin/apache-tomcat-8.5.43.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.43/* /opt/tomcat/.
RUN yum -y install java
WORKDIR /opt/tomcat/webapps
RUN curl -o -l https://github.com/saiteja.com/Docker1/raw/master/dist/samplewebApp.war
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh","run"]
