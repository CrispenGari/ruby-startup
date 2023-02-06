### Ruby on Rails

In this one we are going to walk through how we can create full stack application with `ruby`. We are also going to have a look on how we can create APIs in this sub repository rails.

### Getting Started

Make sure that you have `ruby` installed on your computer, to check that you need to run the following command:

```shell
ruby --version
```

In my case i have `ruby:version ruby 3.0.2p107`. The next thing that we have to do is to install `rails` using `gem`. To check the version of `gem` that you are using you are going to run the following command:

```shell
gem --version
```

In my case i'm having `gem:version 3.2.22`.

> Installing rails helps us to get some command from rails like `rails new` so we need to install `rails` by running the following command:

```shell
gem install rails
```

After the installation is complete we can go ahead and check the version of rails that we are using by running the following command:

```shell
rails --version
```

I'm currently running `rails:version Rails 7.0.4.2`

### Creating a new Rails App

To create a new rails app you run the following command:

```shell
rails new <app_name>
# example

rails new getting_started
```

Then when everything has been installed you then have to navigate to the `getting_started` folder and run the command `ruby bin/rails server` as follows:

```shell
cd getting_started
# then
ruby bin/rails server
```

You can open a browser at `http://127.0.0.1:3000` and you will be able to see the web application running.
