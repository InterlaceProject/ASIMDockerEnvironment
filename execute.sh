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
if [ ! -p in ]; then
    mkfifo in
fi
tail -f in | java -jar coreASIM/org.coreasim.biomics.wrapper/target/brapper.jar \
	-m localhost -mp 9090 2>&1 &
pid2=$!
sleep 5;

####load specification
eval cd $tools
eval node loadICEF.js $project/ASIMSpec/run.icef localhost 9090

### some stdout logging
echo $pid $pid2

### wait 60 Seconds for the ASIM to finish
sleep 60s
kill $pid $pid2
