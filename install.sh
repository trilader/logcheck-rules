#!/bin/bash

set -e
DIR="$(readlink -f $(dirname $0))"

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
elif [ ! -d "$1" ]; then
    echo "You must specify a writable, existing directory for installation"
    usage
fi

PREFIX="$DIR/rules/"
INSTALL_DIR="$(readlink -f $1)"

for rule in $(cd $PREFIX; echo *);
do
        ln -s "$PREFIX$rule" "$INSTALL_DIR/$rule"
done

exit 0
