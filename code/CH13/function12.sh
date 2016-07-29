#function12.sh
#!/bin/bash

foo()
{
   read y
   foo $y
   echo "$y"
}

foo
exit 0
