#!/bin/bash

i=0
while : ; do
    if ((i >= 10)); then
        break
    fi

    echo $((++i))
done

