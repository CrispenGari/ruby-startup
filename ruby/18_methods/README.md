### Method or Functions

A function is just a piece of code to execute a specific task. Functions can take arguments and some can not. Here we are going to have a look at user defined functions.

1. function with no argument

```rb
def hello
  puts "Hello!!!"
end

hello
# Or can be called as
hello()
```

2. a function that takes in positional arguments

```rb
def printName(name)
  puts "Hello, #{name}"
end
printName("World")

# or
printName "World"
```

3. A function that takes in default parameters

```rb
def printName(name="name")
  puts "Hello, #{name}"
end
printName()
# or
printName

```

4. A function that takes in `key-word-args`

```rb
def printInfo(name: "John", age: 10)
  puts "name #{name}"
  puts "Age #{age}"
end
printInfo
# or
printInfo age: 2, name: 6
#  Or
printInfo(age: 2, name: 6)
```

5. A function that takes in `infinite` parameters

```rb
def printNames(*names)
  names.each_with_index {|n, i| puts "#{i+1}) name: #{n} "}
end
printNames "Jonh", "Peter"

```

```rb

```
