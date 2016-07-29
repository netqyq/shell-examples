#!/bin/awk -f
NF!=MAX
{print("The line "NR" does not have "MAX" filds")}
