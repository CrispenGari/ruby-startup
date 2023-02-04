### Variable Scope

There are 5 types of variables in ruby, but we are going to focus on `global` and `local` varibales.

1. local variables

`a` is a local variable because it is only accessible in the body of the funstion `hello`

```rb
def hello
  a = 10
  puts "a: #{a}"
end

hello

puts "a: #{a}"

```

Output:

```shell
a: 10
main.rb:9:in `<main>': undefined local variable or method `a' for main:Object (NameError)
```

If we define `a` outside of the function `hello`, the value of `a` will not be changed in the body of this function since `a` is a local variable.

```rb
a = 18
def hello
    a = 10
    puts "a: #{a}"
  end

hello

puts "a: #{a}"

```

Output:

```shell
a: 10
a: 18
```

2. global variables

To define a global variable in ruby it must start with a `$` here is an example.

```rb
$a = 18
def hello
    $a = 10
    puts "a: #{$a}"
  end

hello

puts "a: #{$a}"

```

Output:

The value of `$a` can be changed since `$a` is a global variable.

```shell
a: 10
a: 10
```
