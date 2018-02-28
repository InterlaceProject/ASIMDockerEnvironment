#!/bin/bash

#set environment variables
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#remove stale container if exists
docker rm active_asim 2>/dev/null

#start container
docker run -v $DIR/ASIMSpec:/home/ASIMSpec  --name active_asim -it asim /home/execute.sh
