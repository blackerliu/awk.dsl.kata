#!/bin/sh

tr -cs 'a-zA-Z' '[\n*]' < $1 |
awk 	'
	{
		count[$1]++
	}	
	
END	{
		for (item in count) 
		{
			if(count[item] > 4)
			{
				printf "%-15s%3s\n",item,count[item]
			}
		}
	}' |
#sort +lnr +0f -1
sort
