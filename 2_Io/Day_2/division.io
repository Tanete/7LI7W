newDivision := Number getSlot("/")
Number / = method( denominator, if(denominator == 0, 0, newDivision(denominator)))

(10 / 2) println
(10 / 0) println
(10 / 0.0) println
