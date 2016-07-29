#!/bin/bash
exec 8>&1 9>&2
exec &> loggg

ls z*
date
exec 1>&8 2>&9 8<&- 9<&-
echo "-----------------"
echo "Close FD 8 and 9:"
ls z*
date
