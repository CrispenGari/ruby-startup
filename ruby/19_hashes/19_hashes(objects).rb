
=begin
A Hash is a dictionary-like collection of unique keys and their values. Also called associative arrays, they are similar
to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type. You retrieve or
create a new entry in a Hash by referring to its key.
=end

my_hash = {
   "name" => "Crispen",
   "age" => 22,
  "languages" =>[ "py", "js", "rubby"]
}

print(my_hash.keys)
puts
print(my_hash.values)
puts
print(my_hash["name"])

puts
my_hash = { length: 4, width: 5 }
puts my_hash[:length]

puts(my_hash.fetch(:age, false))
my_hash.store(:age, 19)
puts(my_hash.fetch(:age, false))


# Iterating over a hash
#

my_hash.each do |key, value|
  puts "key=#{key}, value=#{value}"
end

my_hash.each_key do |key|
  puts key
end

my_hash.each_value do |key|
  puts key
end


my_hash.each_with_index do |(key, value), index|
  puts "index =#{index}, key=#{key}, value=#{value}"
end