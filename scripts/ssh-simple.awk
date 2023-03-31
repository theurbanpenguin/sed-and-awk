#!/bin/awk -f
/Failed password for invalid user /{
        print $13
}
/Failed password for root /{
        print $11
}