#!/bin/sh

rootspace=`df $PWD | awk '/[0-9]%/{print $(NF-2)}'`

if [ $rootspace -gt 5877704 ]; then
  result='fail'
else
  result='pass'
fi

echo $result

exit 1

