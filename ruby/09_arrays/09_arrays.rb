
# Strings arrays

my_array = %w(This is an array of strings)

# Creating an array

my_array = Array.new 3, :s

a = Array.new (5) {19}
print(a)

# Creating arrays from symbols

c = %i(one two three four)
print(c)

# Array manipulation

d = [1, 2, 3]<<4 # add 4 to the end of the array

d.push(6)
d.unshift(10)
d.delete(2)
d.pop
d.shift
d.delete_at(0)

# Combining arrays
a = [2, 3, 5].concat(d)
a = a + [9, 7, 8]

# Indexing
puts a[0], a[-1], a.first(2), a.last, a[0...2]

## Random accecing an element of an array
print("Random element #{a.sample(3)}")

### Array destructuring

a, b, c = [2, 3, 4]
print("\na =#{a}, b=#{b} c=#{c}")

a, b , *c = [2, 3, 6 , 19, 90, 7]
print("\na =#{a}, b=#{b} c=#{c}")

### Unions and Intersections

x = [5, 5, 1, 3]
y = [5, 2, 4, 3]

# Unioun
print(x|y)

#Intersection
print(x&y)

# Difference

print(x-y)

# Removing all nil elements in an array

c = [ 1, nil, 'hello', nil, '5', 33, false].compact

print(c)

# reduce, map and filter

my_numbers = [2, 2, 4]
print("\n #{my_numbers}")

sum1 = my_numbers.reduce(0, :+)
sum2 = my_numbers.reduce { |a, b| a + b }
sum3 = my_numbers.reduce(0) {|a, b| a + b}
sum = my_numbers.reduce(:+)

puts(sum==sum2, sum2 ==sum1, sum1 == sum3)

puts my_numbers.select { |a| a > 3 }
puts my_numbers.reject{|a| a > 3}

print(my_numbers.map { |a| a **2 })

print(my_numbers.map { |a| a.to_s })


=begin
Write a program that will sum the elements of a given array.
Write a program that will get odd or even elements of an array
Write a program that will sort an array of numbers
=end

def sum_of_array(array)
  return array.reduce(0, :+)
end

def filter_array(array, cate="odd")
  if cate == "odd"
    return  array.reject {|a| a % 2 == 0}
  else
    return  array.select {|a| a % 2 == 0}
  end
end

def sort_array(array, order)
  array = array.sort()
  array = array.reverse() unless  order == "asc"
  return array
end

my_array = [2, 68, -9, 188, 99, 67]

print("\nmy array: #{my_array}")
print("\nmy sum: #{sum_of_array(my_array)}")
print("\nmy odds: #{filter_array(my_array)}")
print("\nmy even: #{filter_array(my_array, "even")}")
print("\nmy desc: #{sort_array(my_array, "desc")}")
print("\nmy asc: #{sort_array(my_array, "asc")}")



def swap_values(a, b)
  temp = a
  a = b
  b = temp
  return a, b
end

