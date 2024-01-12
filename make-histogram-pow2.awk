
{
	SIZE=$1;
	# We bin sizes by power 2, starting at the theoretical max of 16MB (max chunk size) aka 24 bits
	IDX=0;
	for (log2 = 24; log2 >= 1 && IDX == 0; log2 --) {
		if (SIZE >= (2 ** log2)) IDX = log2;
	}
	num[IDX]++;
}

END { 
	for (n in num) print 8* (2**n), num[n] 
}


