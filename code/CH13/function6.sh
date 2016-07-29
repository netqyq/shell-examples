
#function6.sh
#!/bin/bash

ind_func()
{
    echo " $1"
}

parameter=ind_arg
ind_arg=Hello

ind_func "$parameter"

ind_func "${!parameter}"

echo "***********************"

ind_arg=World
ind_func "$parameter"
ind_func "${!parameter}"
