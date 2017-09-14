#!/bin/bash

set -o nounset
set -o errexit

my_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# set default for flags
someflag=false

# parse flags
while getopts ":f" opt; do
    case ${opt} in
        f ) someflag=true
            ;;
        \? ) echo "Usage: command [-c] args"
            ;;
    esac
done
shift $((OPTIND - 1))

# set remaining args
bar=$1

# define functions
function foo {
    echo "FOO"
}

# execute flags
if [ "$someflag" = true ] ; then
    foo
fi

# main logic
echo $bar
