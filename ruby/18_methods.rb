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
# or
printName


def hello_world(name)
  puts "hello " + name
end

hello_world "there"

# Keyword args


def printInfo(name: "John", age: 10)
  puts "name #{name}"
  puts "Age #{age}"
end
printInfo
# or
printInfo age: 2, name: 6
#  Or
printInfo(age: 2, name: 6)

# Infinite parameters

def printNames(*names)
  names.each_with_index {|n, i| puts "#{i+1}) name: #{n} "}
end
printNames "Jonh", "Peter"
