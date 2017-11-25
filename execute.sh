#!/bin/bash
docker rm active_asim 2>/dev/null
docker run --name active_asim -it asim /home/execute.sh
