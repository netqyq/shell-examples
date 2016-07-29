#case_exam1.sh: 
#!/bin/bash
  
  echo "Please Input a mouth(0-12): "
  read month

  case "$month" in
  1)   echo "The month is January!";;
  2)   echo "The month is February!";;
  3)   echo "The month is March!";;
  4)   echo "The month is April!";;
  5)   echo "The month is May!";;
  6)   echo "The month is June!";;
  7)   echo "The month is July!";;
  8)   echo "The month is August!";;
  9)   echo "The month is September!";;
  10)  echo "The month is October!";;
  11)  echo "The month is November!";;
  12)  echo "The month is December!";;
  *)   echo "The month is not in (0-12).";;
  esac
  echo "The 'case' command ends"

