FROM ubuntu
MAINTAINER aqssxlzc@gmail.com
RUN apt-get update
RUN apt-get install -y wget
RUN mkdir -p /usr/java
RUN wget -O java.tar.gz http://download.oracle.com/otn-pub/java/jdk/8u40-b25/jdk-8u40-linux-x64.tar.gz --header "Cookie: oraclelicense=accept-securebackup-cookie"
RUN ls 
RUN tar xfz java.tar.gz -C /usr/java
ENV JAVA_HOME /usr/java/jdk1.8.0_40
ENV PATH $PATH:$JAVA_HOME/bin
WORKDIR /usr/local/lib
RUN mkdir -p /usr/java/lib
RUN wget http://www.antlr.org/download/antlr-4.5.3-complete.jar
RUN cp antlr-4.5.3-complete.jar /usr/local/lib
RUN echo '#!/bin/bash\njava -jar /usr/local/lib/antlr-4.5.3-complete.jar' > /usr/bin/antlr4
RUN chmod +x /usr/bin/antlr4
RUN echo '#!/bin/bash\njava org.antlr.v4.gui.TestRig' > /usr/bin/grun
RUN chmod +x /usr/bin/grun
#RUN chmod u+x /usr/local/bin/antlr4
#RUN chmod u+x /usr/local/bin/grun
ENV CLASSPATH .:/usr/local/lib/antlr-4.5.3-complete.jar:$CLASSPATH

