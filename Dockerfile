

FROM centos

MAINTAINER Saiteja saiteja.deeti22@gmail.com
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl -o http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.47/bin/apache-tomcat-8.5.47.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.47/* /opt/tomcat/.
RUN yum -y install java
WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/saiteja.com/Docker1/raw/master/dist/samplewebApp.war
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh","run"]
