#!/bin/bash
#remove stale container if exists
docker rm active_asim 2>/dev/null
#start container
docker run --name active_asim -it asim /home/execute.sh
