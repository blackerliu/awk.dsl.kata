#!/usr/bin/awk -f

BEGIN {
	FS="\t+"
	months="Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"
}

function monthdigit(mymonth) {
	return (index(months,mymonth)+3)/4
}
