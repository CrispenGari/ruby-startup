# A function is just a block of code that perform a specific action

def printName(name)
  puts "Hello, #{name}"
end
printName("World")


# Default parameters

def printName(name="name")
  puts "Hello, #{name}"
end
printName()