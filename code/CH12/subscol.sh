#!/bin/bash

if (set -u; : $var)
then 
  echo "Variable is set."
fi

