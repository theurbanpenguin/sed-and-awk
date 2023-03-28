#!/bin/awk -f
BEGIN { RS="\\n\\s*\\n" }
$0 ~ pattern { print }