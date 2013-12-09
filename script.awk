BEGIN{
FS=":"
print "Awk Begin"
print "Filename:" FILENAME

filename="script.awk"
author="liujh"
version="0.0.1"

numelements=split("Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec",mymonths,",")
for (elem in mymonths) {
	print "Month:" elem, mymonths[elem]
}
}


{print $0}
/main/ {print $0}
/foo/ && /the/ {print "line length:",length(filename), toupper(filename)}

END{
print "Awk End"
}
