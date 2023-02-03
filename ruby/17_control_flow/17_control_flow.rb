
# If statements
# * Create a program that will toss a dice and
# detemine if head or tail, head [0, 1]
#

toss = rand(2)
if toss == 0
  puts "head"
else
  puts "tail"
end

# If else if

age = 18

if age== 18
  print(18)
elsif age > 18
  print "greater"
else
  print "less"
end
puts

# Case statements
#

case toss
when 1
  puts "tail"
when 0
  puts "head"
else
  puts "none of the above"
end

x = 10
case x
when 1,2,3 then puts "1, 2, or 3"
when 10 then puts "10"
else puts "Some other number"
end

# Truthy and Falsy values
#

my_name = x == 10? "ten": "not ten"
puts my_name

puts "x is less than 100" if x < 100

# While Until

i = 0
while  i < 5
  puts "Iteration ##{i}"
  i += 1
end

### Write a program that detemines months that end with 31, 30 or 28

def getDays(month)
  case month
  when 1, 3, 5, 7, 8, 10, 12
    puts 31
  when 2
    puts 28
  when  4, 6, 9, 11
    puts 30
  else
    puts "Invalid month number...."
  end
end

puts "*"*10
for m in [2, 15, 8, 3]
  getDays(m)
end
puts "*"*10
# The flip flop operator .. is used between two conditions in a conditional statement:
(1..10).select do |i|
  a = i if (i==3) .. (i==8)
  print(a)
end
puts

# Throw catch
#
catch(:out) do
  catch(:nested) do
    puts "nested"
  end
  puts "before"
  throw :out
  puts "will not be executed"
end
puts "after"

# Section 17.11: Loop control with break, next, and redo
actions = %w(run jump swim exit macarena)
index = 0
while index < actions.length
  action = actions[index]
  break if action == "exit"
  index += 1
  puts "Currently doing this action: #{action}"
end
