#!/bin/sh -l

# default passed is true, if fails checks then passed is false
passed=1


todos=$(egrep --include="*.py" --include="*.md" -rn "XXX|fillme|FILLME|xxx|TODO|todo|to-do|FIXME|fix-me|fixme|fix me|to do|FIX ME|TO DO" *)
case $? in
    0) echo $todos && passed=0;;
    *) echo "No TODO's found";;
esac


commented_code=$(egrep -rn  "# " *.py > a && egrep -rn "#" *.py > b && diff -c a b | grep  "+" && rm a && rm b)
# 2 is no .py # 1 is no commented code 0 is commented code

case $? in
    1) echo "No commented out code found" ;;
    2) echo "No .py files to check in project" ;;
    0) echo $commented_code && passed=0 ;;
esac

case $passed in
    0) exit 1;;
    1) exit 0;;
esac


