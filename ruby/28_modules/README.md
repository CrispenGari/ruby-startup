### Module

Modules are defined using the key word `module` and can be imported and used in other scripts in ruby. Modules can be defined in the same file they are called for example:

```rb

module Hello
  MESSAGE = "hello there"

  def Hello.power(x, e)
    return x ** e
  end

  def Hello.message
    puts MESSAGE
  end
end

puts Hello::MESSAGE

puts Hello::power(5, 2)

puts Hello::message

```

Modules can also be defined in a separate file and be called using using the `require` or `require_relative` to be used in another ruby file. Let's take our hello module in a file called `hello.rb`

```rb
# hello.rb
module Hello
  MESSAGE = "hello there"

  def Hello.power(x, e)
    return x ** e
  end

  def Hell.message
    puts MESSAGE
  end
end
```

Now in our `main.rb` we are going to use it as follows:

```rb
require_relative 'hello'

puts Hello::MESSAGE

puts Hello::power(5, 2)

puts Hello::message

```

> Note that the file `extension` does not matter.

```rb
require './hello'

puts Hello::MESSAGE

puts Hello::power(5, 2)

puts Hello::message

```
