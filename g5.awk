# print all lines except those read with getline
{print "line #", NR, $0}

# if line gegins with "b" process it specially
/^b/{
	# use getline to read the next line into variable named hold
	getline hold
	
	# print value of hold
	print "skip this line:", hold

	# $0 is not affected when getline reads into a variable
	# $1 still hold previous value
	print "previous line began with:", $1
}

{
	print ">>>> finished processing line #", NR
	print ""
}
