#!/bin/bash

#build core asim
cd /home/icef/coreASIM/org.coreasim.parent && \
      mvn clean package install

#build eclipse plugin
cd /home/icef/coreASIM/org.coreasim.eclipse && \
      mvn clean package install

#get/install missing node packages
cd /home/icef/manager && \
      npm install
cd /home/icef/tools && \
      npm install
