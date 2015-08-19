# referring to https://github.com/kikito/7-languages-in-7-weeks/blob/master/2-io/day-2/day-2.io
List myAverage := method(sum / size)

list(1,2,3,4,5,6,7) myAverage println

List strictSum := method(reduce(accum, item,
if(not (item isKindOf(Number)), Exception rase("Only numbers allowed"))
accum + item
))

List strictAverage := method( strictSum / size)

list(1,2,3) strictAverage println
list(1,2,"a") strictAverage println
