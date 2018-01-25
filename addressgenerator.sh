#!/bin/sh

# Allowed Words:
#  xxx           must contain 'xxx'
#  bar$          must end with 'bar'
#  ^foo          must begin with 'foo'
#  b[a4]r        may contain leetspeech ;)
#  ^ab|^cd       must begin with 'ab' or 'cd'
#  [a-z]{16}     must contain letters only, no digits
#  ^dusk.*dawn$  must begin with 'dusk' and end with 'dawn'

minimumStr=$1
word=$2

pattern=`echo $minimumStr| tr ' ' '|'`

Loop() {
    instance=$1
    while :
    do
        ds=`date "+%Y%m%d%H%M%S"`
        output=/develop/shallot/tmp/private_key$ds.txt
        nice ./shallot -f $output -t 1 $pattern
        [[ -f "$output" ]] && grep -q "$word" "$output" && cat "$output" && break
    done
}
Loop 100

exit 0
