loopfib := method(n,
  if( n < 2, 1,
    n_1 := 1
    n_2 := 1
    sum := 2
    for(i, 2, n,
      sum = n_1 + n_2
      n_2 = n_1
      n_1 = sum
    )
    sum
  )

loopfib(11) println
