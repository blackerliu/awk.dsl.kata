#!/usr/bin/awk -f
{
if($1 ~ /ply/) $1 = "Plymouth"
if($1 ~ /chev/) $1 = "Chevrolet"
print
}
