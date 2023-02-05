### Control Statement or Conditional Statements

These statements are used to control the flow of the program and the are sometimes called conditional statements.

```rb
# If statements
# * Create a program that will toss a dice and
# detemine if head or tail, head [0, 1]
#

toss = rand(2)
if toss == 0
  puts "head"
else
  puts "tail"
end
```

Using the `elsif`

```rb
age = 18
if age== 18
  print(18)
elsif age > 18
  print "greater"
else
  print "less"
end
```

Switch and `case` statements

```rb
case toss
when 1
  puts "tail"
when 0
  puts "head"
else
  puts "none of the above"
end
```

Example 2:

```rb
x = 10
case x
when 1,2,3 then puts "1, 2, or 3"
when 10 then puts "10"
else puts "Some other number"
end
```

### Truthy and Falsy values

The tinary operator `?`

```rb
my_name = x == 10? "ten": "not ten"
puts my_name
```

```rb
puts "x is less than 100" if x < 100
```
