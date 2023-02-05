### Blocks

A block is the same thing as a method, but it does not belong to an object. Blocks are called closures in other programming languages.

### Creating a Block

```rb
def test
  puts "You are in the method"
  yield
  puts "You are again back to the method"
  yield
end
test {puts "You are in the block"}
```

Output:

```shell
You are in the method
You are in the block
You are again back to the method
You are in the block
```

Blocks can also return a value.

```rb
def hello
  yield 10
end

hello {|n| puts "The number is: #{n}"}
```

Output:

```shell
The number is: 10
```

```rb
def hello
  yield 1
  puts "Next Block"
  yield 2
  puts "Final Block"
  yield 3
end

hello {|n| puts "The number is: #{n}"}

```

Output:

```shell
The number is: 1
Next Block
The number is: 2
Final Block
The number is: 3
```

Blocks can also be defined using the `BEGIN` and `END` key words

```rb
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
```

Output:

```shell
BEGIN code block
MAIN code block
END code block
```

> The begin blocks are executed first before the main code and the end blocks are executed last, you can have multiple begin and end blocks in your program but note that the begin blocks are executed in sequence while the end blocks will be executed in reverse
