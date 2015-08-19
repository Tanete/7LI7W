array := List clone
array := list(1, 1)

n := 11
for(i, 2, n, 1, array append(array at(i-1) + array at(i-2)) println)
