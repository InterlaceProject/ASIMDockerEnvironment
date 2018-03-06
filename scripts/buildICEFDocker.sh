#!/bin/bash

#build core asim
cd /home/icef/coreASIM/org.coreasim.parent && \
      mvn package
#get/install missing node packages
cd /home/icef/manager && \
      npm install
cd /home/icef/tools && \
      npm install