recfib := method( n, if( n < 2, 1, recfib(n-1) + recfib(n-2) ) )

recfib(11) println 
