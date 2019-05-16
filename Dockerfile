FROM tomcat:8.0

MAINTAINER Anitha Dokka

COPY ./web-apps/* /usr/local/tomcat/webapps/
