FROM java
MAINTAINER aqssxlzc@gmail.com
RUN wget https://www.antlr.org/download/antlr-4.7.2-complete.jar -P /usr/local/lib
RUN wget https://www.antlr.org/download/antlr4-cpp-runtime-4.7.2-source.zip -P /usr/local/lib
ADD files/deploy.sh /usr/bin/deploy
RUN chmod +x /usr/bin/deploy
ADD files/antlr4.sh /usr/bin/antlr4
RUN chmod +x /usr/bin/antlr4
ADD files/grun.sh /usr/bin/grun
RUN chmod +x /usr/bin/grun
ENV CLASSPATH .:/usr/local/lib/antlr-4.5.3-complete.jar:$CLASSPATH

