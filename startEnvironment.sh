#!/bin/bash

#load config
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/asimrc

#start manager
eval cd $manager
node casima.js &
pid=$!

#wait for manager beeing ready
sleep 5
eval cd $icef

###TODO: run brapper
nohup java -jar coreASIM/org.coreasim.biomics.wrapper/target/brapper.jar \
	-m localhost -mp 9090 </dev/null >asim.log 2>&1 &

sleep 10; $project/execute.sh
cat asim.log
pid2=$!
echo $pid $pid2
