#We exclude certain lines from being processed
!(/Never logged in/ || /^Username/ || /^root/) {
  COUNT++;
  if ( NF == 8 )
    printf "%8s %2s %3s %4s\n", $1,$5,$4,$8;
  else
    printf "%8s %2s %3s %4s\n", $1,$6,$5,$9};
END {
  print "====================";
  print "Total Number of Users Processed: ", COUNT;
}
