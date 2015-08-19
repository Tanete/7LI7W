arr := list( list(1, 2, 3),
             list(4, 5, 6),
             list(7, 8, 9)
)

List sum_2d_array := method(reduce(accum, line, accum + line sum, 0))

arr sum_2d_array println
