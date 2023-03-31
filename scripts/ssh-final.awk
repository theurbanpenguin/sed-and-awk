#!/bin/awk -f
/Failed password for invalid user /{
        ips[$13]=1
}
/Failed password for root /{
        ips[$11]=1
}
END {
        n=asorti(ips, sorted_ips)
        for(i=1; i<=n; i++) {
                print sorted_ips[i]
        }
}