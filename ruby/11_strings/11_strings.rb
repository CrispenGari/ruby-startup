

all= %Q(He's weired he said: "Hello world")
print(all)
puts

mystring = "This"
puts mystring.swapcase
puts mystring.upcase
puts mystring.downcase
puts mystring.capitalize
puts "*"*30
puts mystring.concat(+ " "+mystring, " " + mystring )

puts("Hello world, how is it going".split(' '))

puts mystring.start_with?("Th")

my_array = %w(this is a dog).map { |a| a.to_s }

print(my_array.join(" "))
puts

# String sub

puts "string hellooo".sub('ooo', "o")

puts mystring.reverse
