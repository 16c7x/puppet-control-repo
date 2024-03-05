#!/bin/sh

rootspace=`df $PWD | awk '/[0-9]%/{print $(NF-2)}'`

if [ $rootspace -gt 5000000000 ]; then
  result=0
else
  result=1
fi

exit $result

