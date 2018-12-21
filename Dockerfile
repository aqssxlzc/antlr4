FROM java
MAINTAINER aqssxlzc@gmail.com
RUN wget https://www.antlr.org/download/antlr-4.7.2-complete.jar -P /usr/local/lib
RUN echo '#!/bin/bash\njava -jar /usr/local/lib/antlr-4.7.2-complete.jar' > /usr/bin/antlr4
RUN chmod +x /usr/bin/antlr4
RUN echo '#!/bin/bash\njava org.antlr.v4.gui.TestRig' > /usr/bin/grun
RUN chmod +x /usr/bin/grun
ENV CLASSPATH .:/usr/local/lib/antlr-4.5.3-complete.jar:$CLASSPATH

