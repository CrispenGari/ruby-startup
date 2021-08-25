
begin
  a = 6
  b = 0
  puts a/b
rescue
  print "You can not devide by 0."
end
puts

# Creating a custom exception
class DivisionByZeroException < StandardError
end

begin
  b = 0
  a = 10
  if b == 0
    raise(DivisionByZeroException, "You can't just do that.")
  end
  puts a/b
rescue DivisionByZeroException => e
  puts e
end

# Handing miltiple exceptions
begin
  # an execution that may fail
rescue FirstError => e
  # do something if a FirstError occurs
rescue SecondError => e
  # do something if a SecondError occurs
rescue => e
  # do something if a StandardError occurs
end
