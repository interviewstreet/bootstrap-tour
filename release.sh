#!/bin/bash

[ -z "$1" ] && exit 1 || JUMBO=$1
[ -z "$2" ] && exit 1 || MAJOR=$2
[ -z "$3" ] && exit 1 || MINOR=$3
gulp dist && git add . && git commit -am "Compiled files for version $1.$2.$3" && git tag -a v$1.$2.$3 -m "Tag for version $1.$2.$3" && git push origin v$1.$2.$3 && git reset --hard HEAD~1