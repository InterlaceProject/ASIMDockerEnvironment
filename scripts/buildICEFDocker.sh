#!/bin/bash

#build core asim
cd /home/icef/coreASIM/org.coreasim.parent && \
      mvn package install

#build eclipse plugin
cd /home/icef/coreASIM/org.coreasim.eclipse && \
      mvn package install

#get/install missing node packages
cd /home/icef/manager && \
      npm install
cd /home/icef/tools && \
      npm install