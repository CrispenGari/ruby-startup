### Hello world

In this README we are going to show how we can print the `hello-world` message in ruby. First you need to make sure that you have ruby installed in your computer and you can see the version of ruby by running the following command in your terminal.

```shell
ruby --version
```

Output:

```shell
ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x64-mingw32]
```

If you have ruby installed you can now execute ruby from the terminal by opening the integrated ruby shell by running the following command:

```shell
irb
```

Output:

```shell
irb(main):001:0>
```

Now you can start writing ruby code in that terminal.

```shell
irb(main):001:0> puts "Hello world"
Hello world
=> nil
irb(main):002:0> print "Hello world"
Hello world=> nil
irb(main):003:0> p "Hello world"
"Hello world"
=> "Hello world"
irb(main):004:0>
```

### Executing `ruby` scripts.

Ruby scripts should have an extension `.rb` and can be executed from the terminal by running the following command:

```shell
ruby <name-of-script>.rb

# example
ruby 01_hello_world.rb
```
