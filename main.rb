
puts "FIBONACCI SERIES GENERATOR"

print "Enter a number: "
max = gets.chomp.to_i

start = 0
fibo = 1
while fibo < max
  print "#{fibo}, "
  start, fibo = fibo, fibo + start
end


