### Iterations

Iteration is a concept of looping. In this README we are going to look at how to do iterations in `ruby`.

```rb
@arr = [1, 2, 3, 4]
puts @arr.inspect
```

This prints an array as it is:

```shell
[1, 2, 3, 4]
```

You can loop through a collection using the `each` method for example:

```rb
[1, 2, 3, 4].each { |ele| puts"element: #{ele}" }
```

Output

```shell
element: 1
element: 2
element: 3
element: 4
```

If you want to get the element and an index you an loop through a collection using `each_with_index` as follows:

```rb
[1, 2, 3, 4].each_with_index { |ele, i| puts"#{i}. #{ele}" }
```

```shell
0. 1
1. 2
2. 3
3. 4
```

The `N.times do` is also used to create a loop. Let's say we want to execute a piece of code `N` times we can do it as follows

```rb
4.times do
    puts "this"
end
```

Output:

```shell
this
this
this
this
```

For loops are used to create a loop based on a given range

```rb
for i in 0..10
  puts i
end

#  or
for i in 0..10 do
  puts i
end
```

Output:

```shell
0
1
2
3
4
5
6
7
8
9
10
```

While loops checks the condition of a loop before the iteration body, and execute when the control statement or condition is `true`

```rb
i = 0
while i<5
  puts i
  i+=1
end
```

Output:

```shell
0
1
2
3
4
```

Checks the condition first and execute their body when the condition is false.

```rb
i = 0
until i > 5
  puts i
  i += 1
end
```

Output:

```shell
0
1
2
3
4
```

Do loops are the opposite of `while` and `until` loops as they check the condition after executing their body. Here is an example

```rb
i =0
begin
  puts i
  i += 1
end while i < 10
```

Output:

```shell
0
1
2
3
4
5
6
7
8
9
```

Checking the condition with `until`

```rb
i =0
begin
  puts i
  i += 1
end until i > 10

```

Output:

```shell
0
1
2
3
4
5
6
7
8
9
10
```

`break` statement is used to terminate the loop.

```rb
i =0
while true
  puts i
  if i == 5
    break
  end
  i += 1
end

```

Output:

```shell
0
1
2
3
4
5
```

`next` in other languages is the same as `continue` it is used to skip the current loop and go to the `next` loop.

```rb
i =0
while i< 4
  i += 1
  if i == 3
    next
  end
  puts i
end

```

Output:

```shell
1
2
4
```

`redo` key word tells ruby to repeat the current `loop`

```rb
i =0
begin
  puts i
  if i == 3
    redo # repeats the loop when i == 3 resulting in an infinite loop
  end
  i += 1
end while i < 10
```

Output:

```shell
> repeats the loop when i == 3 resulting in an infinite loop
```

```rb

```

Output:

```shell

```
