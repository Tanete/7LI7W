f = File.open('test.txt')
puts f.read
f.close

File.foreach('test.txt') {|s|
  puts s
}
