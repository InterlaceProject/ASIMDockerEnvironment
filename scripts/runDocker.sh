#!/bin/bash

#start container
docker run -v "$1/ASIMSpec:/home/ASIMSpec" -v "$1/icef:/home/icef" --name active_asim -it asim /$2