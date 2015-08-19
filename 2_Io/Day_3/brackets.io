squareBrackets := method( call message arguments )
List squareBrackets := method( index, value, if(value == nil, at(index), atPut(index, value)))

l := ["a", "list", "made", "with", "brackets"]
l println
l[1] println
l[1, "table"]
l[5] println
l println
