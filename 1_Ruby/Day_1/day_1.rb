puts 'Hello, world.'

puts 'Hello, Ruby'.index('Ruby')

10.times do
  puts 'Hey, Tanete.'
end

10.times{puts 'Hey, Ruby.'}

10.times{
  puts 'Hey, Ruby.'
}

puts("Jeep" * 10)


11.times do |i|
    puts "This is sentence number #{i}"
end

1.upto(10) do |i|
  puts "This is sentence number again #{i}"
end

(1..10).each { |x| puts "this is the sentence #{x}" }


number = rand(100)
# puts number
guess = -1
while (guess != number)
  guess = gets.chomp.to_f
  puts "Bigger." if guess > number
  puts "Smarller." if guess < number
  puts "Equal." if guess == number
end
