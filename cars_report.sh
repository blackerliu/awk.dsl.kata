#!/bin/sh

if (test $# = 0) then
	echo "You must supply a filename."
	exit 1
fi

(date;cat $1) |
awk 	'
NR == 1 	{print "Report for", $1, $2, $3, ", " $5}
NR > 1		{print $5 "\t" $1}
	'

