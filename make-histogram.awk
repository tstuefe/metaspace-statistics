# This builds up a 1:1 histogram with every value in [min, max] being represented.
# flat (not loga) and very broad.

BEGIN {
	max=0;
}

{
	num[$1]++; 
	if (max < $1) max = $1;
}

END { 

	for (i = 0; i <= max; i++) {
		print i, num[i];
	}
#	for (n in num) print n, num[n] 
}


