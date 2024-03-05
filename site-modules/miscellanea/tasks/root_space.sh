#!/bin/sh

rootspace=`df $PWD | awk '/[0-9]%/{print $(NF-2)}'`

if [ $rootspace -gt 5000000000 ]; then
  result='fail'
else
  result='pass'
fi

echo {result: $result}

exit 0

