BEGIN{
print "Make\tModel\t\tYear\tMiles\tPrice"
print "-----------------------------------------------"
}

{print}

END{
print "-----------------------------------------------"
print NR, "cars for sale."
}

