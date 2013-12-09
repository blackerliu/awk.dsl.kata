if [ $# != 2 ]
	then
		echo "Usage:manuf.sh field file"
		exit 1
fi

awk < $2 '
	{count[$'$1']++}
END{for (item in count) printf "%-20s%-20s\n",\
	item, count[item]}'|
sort
