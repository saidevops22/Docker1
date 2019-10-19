

FROM centos

MAINTAINER Saiteja saidevops22 saiteja.deeti22@gmail.com
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl -O https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.47/bin/apache-tomcat-8.5.47.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.47/* /opt/tomcat/.
RUN yum -y install java
RUN java -version
WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/saidevops22.com/Docker1/raw/master/dist/samplewebApp-NB.zip
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh","run"]
