#!/bin/bash

#load config
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/asimrc

#load specification
eval cd $tools
eval node loadICEF.js $project/ASIMSpec/run.icef localhost 9090
