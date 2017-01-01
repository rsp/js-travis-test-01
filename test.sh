#!/bin/bash

echo =====
echo TESTING program.js
echo It must print JavaScript 20 times:
echo -----
node program.js
echo -----
n=$(echo `node program.js` | tr ' ' '\n' | grep '^JavaScript$' | wc -l)
echo It printed JavaScript $n times.
if [ "$n" = 20 ]; then
    echo TEST OK!
    exit 0
else
    echo TEST FAILED!
    exit 1
fi

