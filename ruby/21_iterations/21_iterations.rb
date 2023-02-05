
# Page 94
@arr = [1, 2, 3, 4]

puts @arr.inspect

[1, 2, 3, 4].each_with_index { |ele, i| puts"#{i}. #{ele}" }


# For iterator loops
for i in 0..10
  puts i
end

# OR
for i in 0..10 do
  puts i
end

# While Loops - checks the condition before the iteration body
i = 0
while i<5
  puts i
  i+=1
end

# Until loops
i = 0

until i > 5
  puts i
  i += 1
end

# Do loops

i =0
begin
  puts i
  i += 1
end while i < 10



# Break Statement

i =0
while true
  puts i
  if i == 5
    break
  end
  i += 1
end

# Continue (next) statement

i =0
while i< 10
  i += 1
  if i == 3
    next
  end
  puts i
end

# redo word

i =0
begin
  puts i
  if i == 3
    redo # repeate the loop when i == 3 resulting in an infinite loop
  end
  i += 1
end while i < 10
