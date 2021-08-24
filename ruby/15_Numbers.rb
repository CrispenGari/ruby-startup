
Integer("123") # => 123
Integer("0xFF") # => 255
Integer("0b100") # => 4
Integer("0555") # => 365

"10".to_i(2) # => 2

my_number = 99.88
my_number.round(1)
puts my_number.round(1)
puts my_number.floor
puts my_number.ceil

5.even?
6.odd?

print([1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select { |a| a.even?})