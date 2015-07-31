# File.foreach('test.txt') do |e|
#   puts e if e.include?('hello')
# end

def grep(filename, phrase)
  File.open(filename) do |f|
    f.each { |line| puts "#{f.lineno}: #{line}" if line[phrase]}
  end
end

grep('test.txt', 'hell')


# String
phrase = 'a'
line = 'abcdefg'
puts line[/a/]
p line[phrase]
puts line[phrase]
puts line['h']
p line['h']
