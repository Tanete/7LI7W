# Copied from https://github.com/kikito/7-languages-in-7-weeks/blob/master/2-io/day-2/day-2.io
# Write a prototype for a two-dimensional list

List2D := List clone

# The dim(x,y) mehotd should allocate a list of y lists of x elements long

dim := method(x,y, List2D clone setSize(y) mapInPlace(_, List clone setSize(x)))

dim(5,2) println

# set(x,y,value) should set a value, and get(x,y) should retrieve it

List2D set := method(x, y, value, at(y) atPut(x,value))
List2D get := method(x, y, at(y) at(x))

list2d := dim(5,2)
list2d set(2,1,"foo")
list2d get(2,1) println

# bonus: write a transpose method

List2D transpose := method(
  other := dim(size, at(0) size)
  foreach(y,row,row foreach(x,value,other set(y,x,value)))
  other
)

List2D with := method(source,
  result := dim(source size, source at(0) size)
  source foreach(y, row, row foreach(x,value, result set(x,y,value)))
  result
)

l := dim(2,2)
l set(0,0,1)
l set(1,0,2)
l set(0,1,3)
l set(1,1,4)
l println
l transpose println

# write the matrix to a file, and read it back
List2D serializeTo := method(path, File open(path) write(serialized) close)
List2D serializeFrom := method(path, with(doFile(path)))

l serializeTo("list.io")
m := List2D serializeFrom("list.io")

l println
m println
