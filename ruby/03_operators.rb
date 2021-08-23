a = 0
a += 1 unless a.zero?
puts a

puts (1..10) === 5
puts (1..10) === 11
puts /all/ === "y'all"


num1 = 10
num2 = 15

sum = 100
sum = 3 unless num1 < num2 
puts "Sum is #{sum}"

puts sum.is_a?(String)

# task: write a function that swaps two numbers if they are not equal
def swap_if_not_equal(a, b)
    puts "a: #{a} b: #{b}"
    if a != b
        b, a = a, b
    end
    puts "a: #{a} b: #{b}"
end
swap_if_not_equal(10, 19)