#!/bin/bash
[ -z $1 ] && echo "Must give a version number" && exit 1
version=`date +"%d-%m-%Y"`
echo "${1}:${version}" > image-version


tar -cvjf rasplex-stage4.tar.bz2 / -X stage4.excl
