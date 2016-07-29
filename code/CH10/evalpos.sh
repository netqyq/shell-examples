#!/bin/bash
echo "The number of arguments passed to this script:$#"
#eval echo \$$#

echo -n "The last argument is:"
eval echo \$$#

