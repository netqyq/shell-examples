#!/bin/bash

S01_name="Li Hao"
S01_dept=Computer
S01_phone=025-83481010
S01_rank=5

S02_name="Zhang Ju"
S02_dept=English
S02_phone=025-83466524
S02_rank=8

S03_name="Zhu Lin"
S03_dept=Physics
S03_phone=025-83680010
S03_rank=3

PS3='Pls. select the number of student:'
select stunum in "S01" "S02" "S03"
do
  name=${stunum}_name
  dept=${stunum}_dept
  phone=${stunum}_phone
  rank=${stunum}_rank

  echo "BASIC INFORMATION OF NO.$stunum STUDENT:"
  echo "NAME:${!name}"
  echo "DEPARTMENT:${!dept}"
  echo "PHONE:${!phone}"
  echo "RANK:${!rank}"
  break
done

