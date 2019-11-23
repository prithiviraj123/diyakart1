  FROM ubuntu:18.04
  RUN apt-get update
  RUN apt-get install -y vim
RUN apt-get install -y git
ADD apache-maven-3.6.2-bin.tar.gz /root
 ENV M2_HOME /usr
  RUN apt-get install -y openjdk-8-jdk
  ENV JAVA_HOME /usr
  ADD apache-tomcat-8.5.49.tar.gz /root
  COPY target/diyaskart.war /root/apache-tomcat-8.5.49/webapps
  ENTRYPOINT root/apache-tomcat-8.5.49/bin/startup.sh && bash 
  
  

