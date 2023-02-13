### Ruby on Rails

In this one we are going to walk through how we can create full stack application with `ruby`. We are also going to have a look on how we can create APIs in this sub repository rails.

> Rails uses the `MVC`which stands for `Models`, `View` and `Controllers`. The Model-View-Controller (MVC) is an architectural pattern that separates an application into three main logical components.

<p align="center">
<img src="mvc.png" width="100%" alt="mvc"/>
</p>

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

In the `rails 3.x` you can start the server by running the following command:

```shell
rails s
```

You can open a browser at `http://127.0.0.1:3000` and you will be able to see the web application running.

### Routing

Routing is the core component of modern `web` applications. To configure and define routes we open a `config/routes.rb` file which by default looks as follows:

```rb
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
```

Now let's go ahead and configure our `home` page. We can ago and open the `config/routes.rb` and define our `root` route as follows:

```rb
Rails.application.routes.draw do
  root "home#index"
end
```

Once we do that the next thing is to go ahead and create a `HomeController`. This function should be created in the `/app/home_controller.rb` file and it will be inheriting from the `ApplicationController`, In that class `HomeController` we will define a method called `index` that as we name our route "home#index" and this method doesn't have to do anything. So the `/app/home_controller.rb` will look as follows:

```rb
class HomeController < ApplicationController
  def index
  end
end
```

> Note that the file name should start with the `"home"` followed by `"_"` the `controller.rb`.

Now in order for us to see something something in the browser we will need to create a view called `index.html.erb` and this should be in the `home` folder. So in our `/app/view/home/index.html.erb` file we will have the following code in it:

```html
<h1>Hello</h1>
```

If we reload the page we will be able to se an `html` document with our `h1` tag that says `Hello`. But we just wrote the `h1` but the document has a title, so where is this title coming from ? Well this is coming from the `views/layout/application.html.erb` file (which is also known as a `layer`) which looks as follows.

```html
<!DOCTYPE html>
<html>
  <head>
    <title>GettingStarted</title>
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <%= csrf_meta_tags %> <%= csp_meta_tag %> <%= stylesheet_link_tag
    "application", "data-turbo-track": "reload" %> <%= javascript_importmap_tags
    %>
  </head>
  <body>
    <%= yield %>
  </body>
</html>
```

So the `<%=  %>` syntax allows us to write some `Ruby` code within `html`. So our `/app/view/home/index.html.erb` view will be rendered in the `body` of the `application.html.erb` file because of the `<%= yield %>`.

#### The `root` route.

We have defined our `root` route before as follows:

```rb
Rails.application.routes.draw do
  root "home#index"
end
```

But there are many ways of defining this route, we can define it as follows

```rb
Rails.application.routes.draw do
  get '/', to: "home#index"
end
```

This is still going to work, Or we can define it without a `/` because it's optional in `ruby` as follows:

```rb
Rails.application.routes.draw do
  get '', to: "home#index"
end

```

Let's create another route called `/about` to do that we are going to open our `routes.rb` in the config folder and modify it to look as follows:

```rb
Rails.application.routes.draw do
  get '', to: "home#index"
  get '/about', to: "about#index"
end
```

Also note that the `/about` is optional we can just say `about`. Next we are going to create a file in the `app/controllers` called `about_controller.rb` and create a `AboutController` as follows:

```rb
class AboutController < ApplicationController
  def index
  end
end
```

After that we will need to create a `view` about in the folder called `about`. We are going to create `index.html.erb` and add the following content in it.

```html
<h1>About Page</h1>
```

Now we can access this page by going to `http://127.0.0.1:3000/about`

### Adding Bootstrap

To add bootstrap is very easy because rails exposes the `application.html.erb` as the `wrapper` so we can go ahead and grab the `css` and `js` `CDNs` from the [getbootstrap.com](https://getbootstrap.com/docs/5.2/getting-started/download/) and paste them in the `head` of our `application.html.erb` file as follows

```html
<!DOCTYPE html>
<html>
  <head>
    <title>GettingStarted</title>
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <%= csrf_meta_tags %> <%= csp_meta_tag %>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <%= stylesheet_link_tag "application", "data-turbo-track": "reload" %> <%=
    javascript_importmap_tags %>
  </head>
  <body>
    <%= yield %>
  </body>
</html>
```

#### Partials

Let's go ahead and create a navbar, we are going to take our `navbar` from `bootstrap`. So what we are going to do is to create a navbar as a component in the `views` folder and we will name it `_navbar.html.erb` and add the following contents in it:

```html
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button
      class="navbar-toggler"
      type="button"
      data-bs-toggle="collapse"
      data-bs-target="#navbarNav"
      aria-controls="navbarNav"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Features</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Pricing</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
```

Now in our `application.html.erb` we are going to modify it to look as follows:

```html
<body>
  <%= render partial: "shared/navbar"%>
  <div class="container"><%= yield %></div>
</body>
```

Now we should be able to see our navbar rendered, Now let's have a look at how we can navigate between the `home` page and the `about` using this navbar. We are going to modify it to look as follows:

```html
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">Navbar</a>
    <button
      class="navbar-toggler"
      type="button"
      data-bs-toggle="collapse"
      data-bs-target="#navbarNav"
      aria-controls="navbarNav"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/about">About</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
```

Changing the `href` attribute of our `a` tags and passing the `path` directly like `/` or `/about` will achieve that functionality, but we can use rails way of generating a link for example for our `/about` will become

```html
<a class="nav-link" href="/about">About</a>
```

Will become:

```html
<%= link_to "About", about_path, class: "nav-link" %>
```

This is cool because we can change the `url` in the our routes as follows:

```rb
Rails.application.routes.draw do
  root to: "home#index"
  get '/about-us', to: "about#index", as: :about
end
```

Without even changing the `_navbar.html.erb` we will get the same behavior as before. So our `partial` `_navbar.html.erb` will be looking as follows:

```html
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <%= link_to "Navbar", root_path, class: "navbar-brand" %>
    <button
      class="navbar-toggler"
      type="button"
      data-bs-toggle="collapse"
      data-bs-target="#navbarNav"
      aria-controls="navbarNav"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <%= link_to "Home", root_path, class: "nav-link active" %>
        </li>
        <li class="nav-item">
          <%= link_to "About", about_path, class: "nav-link" %>
        </li>
      </ul>
    </div>
  </div>
</nav>
```
