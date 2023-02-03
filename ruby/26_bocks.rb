
#  Using yield
def test
  puts "You are in the method"
  yield
  puts "You are again back to the method"
  yield
end
test {puts "You are in the block"}


def hello
  yield 10
end

hello {|n| puts "The number is: #{n}"}

def hello
  yield 1
  puts "Next Block"
  yield 2
  puts "Final Block"
  yield 3
end

hello {|n| puts "The number is: #{n}"}

def hello
  yield 1, 2
  puts "Next Block"
  yield 3, 4
  puts "Final Block"
  yield 5, 6
end

hello {|n, i| puts "i: #{i}, n: #{n}"}

# BEGIN and END Blocks

BEGIN {
  # BEGIN block code
  puts "BEGIN code block"
}

END {
  # END block code
  puts "END code block"
}
  # MAIN block code
puts "MAIN code block"


=begin
The begin blocks are exeuted first before the main code and the end blocks are executed last, you can have multiple begin and end blocks in your program but note that the begin blocks are executed in sequecence while the end blocks will be executed in reverse
=end
