#!/bin/awk -f
BEGIN {
  FS=":";
  printf  "%4s%20s%6s\n","Num:", "Username", "UID";
  COUNT=0
}

/bash$/{
  COUNT++;
  printf "%2d%s%20s%6d\n",COUNT, ": ", $1, $3;
}

END {
   print "We have " NR " users, of which " COUNT " use bash";
}
