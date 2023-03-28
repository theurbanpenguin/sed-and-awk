BEGIN {
  FS=":";
  print "users: "
}
$0 ~ pattern {
  for (i=1; i<=NF; i++) {
    switch(i) {
        case 1:
            printf "  - user: %s\n",$i;
            break;
        case 2:
            printf "    password: %s\n",$i;
            break;
        case 3:
            printf "    uid: %s\n",$i;
            break;
        case 4:
            printf "    gid: %s\n",$i;
            break;
        case 5:
            printf "    gecos: %s\n",$i;
            break;
        case 6:
            printf "    home: %s\n",$i;
            break;
        case 7:
            printf "    shell: %s\n",$i;
            break;
    }
  }
}