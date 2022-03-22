#!/bin/bash
shopt -s expand_aliases
path_to_sendMessage='/Users/chriszhang/GitHub/random/bee/sendMessage.scpt'
alias applescript='osascript $path_to_sendMessage'

target_number='1234567890'

while read line
do
for word in $line
do
    applescript $target_number $word
    sleep .1
done
done <bee.txt
