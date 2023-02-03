
hello_world = -> {"hello world"}
puts hello_world[]

hello_name = ->(name){"Hello, #{name}"}
puts hello_name["name"]

the_thing = lambda do |magic, ohai, dere|
  puts "magic! #{magic}"
  puts "ohai #{dere}"
  puts "#{ohai} means hello"
end
the_thing.call(1, 2, 3)

