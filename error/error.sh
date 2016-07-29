Res=$?
[ $Res-eq 0 ] && exit 0
[ $Res-eq 66 ] && echo "Error! Invalid input."
[ $Res-eq 67 ] && echo "Error! Command -> dd <- Faild."
[ $Res-eq 68 ] && echo "Error! Command -> fdisk <- Faild."
[ $Res-eq 69 ] && echo "Error! Command -> mke2fs <- Faild."
