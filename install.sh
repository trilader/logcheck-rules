#!/bin/bash

set -e
DIR="$(dirname $0)"

function usage()
{
    echo "Usage:"
    echo "$0 <install_dir>"
    echo ""
    exit 1
}

[ $# -lt 1 ] && usage
if [ -z "$1" ]; then 
    echo "You must specify a directory to install the rules to"
    usage
fi

PREFIX="$DIR/rules/"

for rule in $(cd $PREFIX; echo *);
do
    ln -s "$PREFIX$rule" "$1/$rule"
done

exit 0
