### Ruby Gems

Germs are programs that are created and hosted so that they can be used by other developers. In the [RubyGems](https://rubygems.org/) there are various ruby germs that can be installed and be used in our programs.

When you install ruby it comes with a package called gem and we can check the version of it by running the command:

```shell
gem --version
```

In my case I'm using the version `3.2.22`.

When installing `ruby` it comes with some `gems` installed which can be listed by the following command:

```shell
gem list
```

Output:

```shell
*** LOCAL GEMS ***

abbrev (default: 0.1.0)
ast (2.4.2)
backport (1.2.0)
base64 (default: 0.1.0)
benchmark (default: 0.1.1)
bigdecimal (default: 3.0.0)
bundler (default: 2.2.22)
cgi (default: 0.2.0)
csv (default: 3.1.9)
...
```

To install a `gem` you run the following command:

```shell
gem install <gem-name/>
```

Note that the `gems` are found [here](https://rubygems.org/)

Let's install a gem called `tk` we will need to run the following command

```shell
gem install tk
```

After installing it we can use it as follows:

```rb
require 'tk'

root = TkRoot.new { title "Hello, World!" }
TkLabel.new(root) do
   text 'Hello, World!'
   pack { padx 15 ; pady 15; side 'left' }
end
Tk.mainloop
```

To remove a `gem` you need to run the following command:

```shell
gem uninstall tk
```
