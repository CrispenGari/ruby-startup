### Lambda functions

In ruby we can define lambda functions in different ways

### using the keyword lambda

Example 1:

```rb
lambda {|x| puts "x: #{x}"}.call(4)
```

Example 2:

You can assign the lambda function to a variable

```rb
sqaure = lambda {|x| x*x}
puts sqaure.call(8)
```

Example 3:

This function can also accepts multiple parameters

```rb
mul = lambda {|x, y| x * y}
puts mul.call(8, 4)
```

Example 4:

It can also be multiline lambda function

```rb

mul = lambda do |x, y, z|
  return x * y * z
end

puts mul.call(8, 4, 2)
```

Example 5:

You can define a lambda function using an `->`

```rb
hello_world = -> {"hello world"}
puts hello_world[]
```

Example 6:

The arrow lambda can also accepts parameters

```rb
mul = -> (x){x**3}
puts mul.call(3)
```
