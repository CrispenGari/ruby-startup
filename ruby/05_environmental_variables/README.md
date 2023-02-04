### Environmental Variables

In ruby we can be able to set or get environmental variables from the `ENV` constant.

1. setting environmental variable

```rb
ENV["NAME"] = "crispen"

```

2. getting the value of environmental variable

```rb
puts ENV.fetch("NAME")
# or
puts ENV['NAME']
```
