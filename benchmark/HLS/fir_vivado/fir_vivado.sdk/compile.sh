#!/bin/sh
if [ $# -ne 1 ]; then
  echo "Please give the project path!"
  exit 1
fi
benchmark=`basename $1`
path=`dirname $1`
path=`realpath $path`
cd `dirname $0`
source ../../../../scripts/set_paths.sh
xsct -quiet -eval "setws $path; projects -build -type app -name $benchmark"

