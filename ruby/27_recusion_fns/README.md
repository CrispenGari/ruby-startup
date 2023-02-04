### Recursive function

This is a function that calls it self in its function body.

Let's create a recursive function that prints numbers from `1` to `10`

```rb
def numbers(n)
  if n > 10
    return
  end
  print "#{n}, "
  n += 1
  return numbers(n)
end

numbers 1
```

Let's create a recursive functions that will generate the `fibonacci` series

```rb


def fibonacci(n)
  if n < 2
    return 1
  end
  return fibonacci(n-2) + fibonacci(n-1)
end

def loop_me(i=0)
  print "#{fibonacci(i)}, "
  if i == 10
    return
  end
  i += 1
  loop_me(i)
end

loop_me
```
