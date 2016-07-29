#!/bin/bash

isroot()
{
	if [ "$UID" -ne 0 ]
        then
            return 1
        else
            return 0
        fi
}

echoroot()
{
	isroot
        if [ "$?" -ne 0 ]
        then
           echo "I am not ROOT user!"
        else
           echo "ROOT user!"
        fi
}

export PS4='+{$LINENO:${FUNCNAME[0]}:${FUNCNAME[1]}}'
echoroot
