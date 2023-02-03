
puts ENV["HOME"]

# will try retrieve the 'FOO' environment variable. If failed, will get 'bar'
puts ENV.fetch("FOO", 'bar')


ENV["NAME"] = "crispen"

puts ENV.fetch("NAME")