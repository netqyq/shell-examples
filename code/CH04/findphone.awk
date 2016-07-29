#!/bin/awk -f
BEGIN {FS=",";
       if(ARGC>2){name=ARGV[1];delete ARGV[1]}
       else {
              while(!name){print "Pls. Enter a name";
                           getline name< "-"}
            }
      }
$1~name {print $1,$3}
