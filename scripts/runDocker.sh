#!/bin/bash

#start container
docker run -v $1/ASIMSpec:/home/ASIMSpec --name active_asim -it asim /home/executeASIMSpec.sh