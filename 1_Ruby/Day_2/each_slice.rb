array = []
0.upto(15).each do |i|
  array[i] = rand(50)
  if (i + 1) % 4 == 0
    puts "#{array[i]} #{array[i-1]} #{array[i-2]} #{array[i-3]}"
  end
end


arr = (0..15).to_a
n = 0
arr.each{|x|
  if n == 4
    n = 0
    puts ""
  end
  print x," "
  n += 1
}

arr.each_slice(4){|x| p x}

p arr.each_slice(4).to_a
