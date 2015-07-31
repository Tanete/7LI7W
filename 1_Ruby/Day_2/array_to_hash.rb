numbers = {1 => 'one', 2 => 'two', 3 => 'three'}
puts numbers
puts numbers.class
# hash to array
puts numbers.to_a
p numbers.to_a
puts numbers.to_a.class


array = %w[a b c d]
puts array
# array to hash
hash = Hash[*array]

hash.each{|k,v| puts "#{k}=>#{v}"}
