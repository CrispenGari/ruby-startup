a = 0
a += 1 unless a.zero?
puts a # 0

puts (1..10) === 5 # true
puts (1..10) === 11 # false
puts /all/ === "y'all" # true


num1 = 10
num2 = 15

sum = 100
sum = 3 unless num1 < num2
puts "Sum is #{sum}" # 100

puts sum.is_a?(String) # false

# task: write a function that swaps two numbers if they are not equal
def swap_if_not_equal(a, b)
    puts "a: #{a} b: #{b}"
    if a != b
        b, a = a, b
    end
    puts "a: #{a} b: #{b}"
end
swap_if_not_equal(10, 19)
