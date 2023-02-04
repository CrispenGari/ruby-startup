


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
