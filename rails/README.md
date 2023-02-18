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
# or
rails server
```

You can open a browser at `http://127.0.0.1:3000` and you will be able to see the web application running.

You can also specify the `port` number when starting the `rails` app by putting the `-p`flag for example:

```shell
rails s -p 3001
```

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

### Flashing Messages

Flash messages is a way of communicating with users on your rails application. We can use a `flash` helper method in rails that behave like a ruby `hash` to communicate with users in our `rails` app. Flash messages can be set as follows:

```rb
class HomeController < ApplicationController
  def index
    flash[:alert] = "This is an alert message!!"
    flash[:notice] = "This is a notice"
  end
end
```

Since flash messages are shown in the entire application we can then render a partial `notification` in our `application.html.erb` as follows:

```html
<body>
  <%= render partial: "shared/navbar"%>
  <div class="container">
    <%= render partial: "shared/notification"%> <%= yield %>
  </div>
</body>
```

Now in our `shared/_notification.html.erb` we are going to flash the messages as follows

```html
<div class="alert alert-primary" role="alert"><%= flash[:notice]%></div>
<div class="alert alert-danger" role="alert"><%= flash[:alert]%></div>
```

Flash messages can also be created as follows:

```rb
class HomeController < ApplicationController
  def index
    flash.alert = "This is an alert message!!"
    flash.notice = "This is a notice"
  end
end
```

And also can be rendered as follows:

```html
<div class="alert alert-primary" role="alert"><%= flash.notice%></div>
<div class="alert alert-danger" role="alert"><%= flash.alert%></div>
```

We can conditionally rendering flash messages, which means we can show flash messages when we have some. This can be done as follows

```html
<% if flash.notice %>
<div class="alert alert-primary" role="alert"><%= flash.notice%></div>
<% end %> <% if flash.alert%>
<div class="alert alert-danger" role="alert"><%= flash.alert%></div>
<% end %>
```

But you can notice that the flash messages belongs to the `home` page and when we navigate to the about page they are showing. We can disable this behavior buy allowing flash messages to be send to the user on each request in our controller as follows:

```rb
class HomeController < ApplicationController
  def index
    flash.now.alert = "This is an alert message!!"
    flash.now.notice = "This is a notice"
    # OR
    flash.now[:alert] = "This is an alert message!!"
    flash.now[:notice] = "This is a notice"
  end
end

```

Rails by default only allows us to flash two messages with the `alert` and `notice`. Which to me `notice` is when you want to tell users about the `success` action and `alert` is when you want to tell the users about failed actions. But sometimes we may want to create our `custom` flash messages, let's go ahead and so that. To create custom flash messages first we need to open the `controllers/application_controller.rb` file and use the `add_flash_types` to create our own types as follows:

```rb
class ApplicationController < ActionController::Base
  add_flash_types :info, :warning, :error
end
```

Now we can set the flash messages in the `home_controller` as follows

```rb
class HomeController < ApplicationController
  def index
    flash.now[:info] = "This is infomation message"
    flash.now[:warning] = "This is warning message"
    flash.now[:error] = "This is error message"
  end
end

```

Now in our `partial` notification.html.erb we will have the following:

```html
<div class="alert alert-error" role="alert"><%= flash[:error]%></div>
<div class="alert alert-warning" role="alert"><%= flash[:warning]%></div>
<div class="alert alert-info" role="alert"><%= flash[:info]%></div>
```

Sometimes we can render the flash messages as a list, which looks more clean that what we were doing as follows:

```html
<% flash.each do |type, msg| %>
<div class="alert alert-primary" role="alert"><%= msg %></div>
<% end %>
```

### Creating Models

Now let's create a model `User` that we will use to create an authentication application and this will contains the following fields:

1. email
2. password_digest
3. username

To do that we are going to run the following command to create a database table `User`

```shell
rails generate model User email:string username:string password_digest:string
```

Now if we check our `db/migrate/xxxxx_create_users.rb` we will be able to see the following generated table

```rb
class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
```

To actually run these migrations we will run the following command:

```shell
rails db:migrate
```

We wouldn't want to store the password as plain text in our database, so we may want to use `bcrypt` to hash the password. In order for us to do that we will then go inside the `app/models/user.rb` and add the `has_secure_password` field as follows:

```rb
class User < ApplicationRecord
  has_secure_password
end
```

> This will allows us to confirm password and hash the password using the `password_digest` field that we have added in our database.

We can interact with our database using the `rails` console. We can access the `rails` console by running the following command

```shell
rails c
# or
rails console
```

But before we do that we need to install `bcrypt` by opening the `Gemfile` and uncomment the `bcrypt` package and then run:

```shell
bundle install
```

Now we can reopen the rails console and use the `User.all` command to fetch all the users in the database.

```shell
irb(main):002:0> User.all
  User Load (0.4ms)  SELECT "users".* FROM "users"
=> []
```

Now we can go ahead and create a `User`, so the `User` model because we have added the `has_secure_password` field it will contains the following fields:

1. email: `string`
2. password_digest: `string`
3. password: `virtual`
4. password_confirmation: `string` `virtual`
5. username `string`

So now when creating a user we are going to pass the `email`, `password`, and `password_confirmation` as follows:

```rb
User.create({email: "email@gmail.com", password: "password", password_confirmation: "password"})
```

1. Fields validation

Now we can create users but the `email` field can be null, which is something that we don't want when creating a user. So we need to make sure that the user that is being created has an `email` address as well as the `username` so we can go ahead and open the `app/models/user.db` and

```rb
class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
  validates :username, presence: true
end
```

The above will allows us to validate if we have an email address or username before creating the user.

You can also open the `db/migrate/xxxx_create_users.rb` file and edit it as follows:

```rb
class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      #Ex:- :null => false
      t.string :username, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end
```

In order for that to work we wll need to run the following commands:

```rb
rails db:rollback
# then
rails db:migrate

# OR you can just run
rails db:migrate:redo # this will run both the two commands at once
```

We can validate fields for example let's validate our `email` address field we can open our `user.rb` file and add the `format` option and pass a regular expression for email address and together with the error message.

```rb
class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message:"invalid email address" }
  validates :username, presence: true, uniqueness: true
end
```

We can go ahead and test creating a `user` with `invalid` email address from the rails console. But we need to restart the console by running `reload!` command and then we try:

```shell
irb(main):009:0> user = User.create({email: "user", password: "password", password_confirmation: "password", username:"usernam"})
  TRANSACTION (0.1ms)  begin transaction
  User Exists? (0.5ms)  SELECT 1 AS one FROM "users" WHERE "users"."username" = ? LIMIT ?  [["username", "usernam"], ["LIMIT", 1]]
  TRANSACTION (0.1ms)  rollback transaction
=>
#<User:0x000001f96cbc7cc8
...
irb(main):010:0> user.errors
=> #<ActiveModel::Errors [#<ActiveModel::Error attribute=email, type=invalid, options={:message=>"invalid email address", :value=>"user"}>]>
irb(main):011:0>
```

### Creating A Sign Up Form

Now we want to create a Sign Up Form for our user model, so first of all we are going to create a route for signing up. We will first open the `config/routes.rb` file and add the following code in it.

```rb
Rails.application.routes.draw do
  root to: "home#index"
  get '/about-us', to: "about#index", as: :about


  # signing up
  get '/sign_up', to: "signup#new"
  post '/sign_up', to: "signup#create"

end
```

Then after that we will then need to create a `signup_controller.rb` file in the controllers folder and add the following code in it.

```rb
class SignupController < ApplicationController
  def new
    @user = User.new
  end
  def create
  end
end
```

We are creating an instance of a user using `@user` instead of the `user` because we want to use it in our views. Now in the `views/signup/new.html.erb` we can go ahead and create a new for using the user model as follows

```html
<h1>Sign Up</h1>
<%= form_with model: @user, url: sign_up_path do |form| %> <%= form.text_field
:email, placeholder: "email@gmail.com" %> <%= form.text_field :username,
placeholder: "username" %> <%= form.password_field :password, placeholder:
"password" %> <%= form.password_field :password_confirmation, placeholder:
"password" %> <%= form.submit "Sign Up"%> <% end %>
```

We cans style our template using bootstrap as follows

```html
<h1>Sign Up</h1>
<%= form_with model: @user, url: sign_up_path do |form| %> <% if
@user.errors.any? %>
<div class="alert alert-danger">
  <% @user.errors.full_messages.each do |message| %>
  <div><%= message %></div>
  <% end %>
</div>
<% end %>
<div class="mb-3">
  <%= form.label :email, class: "form-label"%> <%= form.text_field :email,
  placeholder: "email@gmail.com", class: "form-control"%>
</div>
<div class="mb-3">
  <%= form.label :username, class: "form-label"%> <%= form.text_field :username,
  placeholder: "username", class: "form-control"%>
</div>
<div class="mb-3">
  <%= form.label :password, class: "form-label"%> <%= form.password_field
  :password, placeholder: "password", class: "form-control"%>
  <div class="mb-3">
    <%= form.label :password_confirmation, class: "form-label"%> <%=
    form.password_field :password_confirmation, placeholder: "password", class:
    "form-control"%>
  </div>
  <div class="mb-3"><%= form.submit "Sign Up", class: 'btn btn-primary'%></div>
  <% end %>
</div>
```

Now let's go ahead and create a `user` when the form is submitted and handle some errors. So we will open the `controllers/singup_controller.rb` file and add the following code in it.

```rb
class SignupController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.keep(:notice)
      redirect_to root_path, notice: "You are logged in as #{@user[:username]}"
    else
      puts @user.errors.full_messages
      render :new, status: :unprocessable_entity, content_type: "text/html"
    end
  end

  private
  def user_params
    puts params
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end
end

```

Now we can be able to sign in and redirected to the home page, when the credentials are correct.

### Session Cookies

Now that we are able to create users from a form, we want to go ahead and persist the session, and check if the user is logged in or not based on the session cookies. For that we are going to modify the `create` method in our `app/controllers/signup_controller.rb` file to look as follows:

```rb
def create
  @user = User.new(user_params)
  if @user.save
    session[:user_id] = @user.id
    flash.keep(:notice)
    redirect_to root_path, notice: "You are logged in as #{@user[:username]}"
  else
    puts @user.errors.full_messages
    render :new, status: :unprocessable_entity, content_type: "text/html"
  end
end
```

So what is happening here is that when we successfully create a user we are going to store their id in the `session-cookie` to lookup for that user by id in any page that we may want to use the userId. On successfully authentication we are also going to redirect the user to the home page, on failure we are going to rerender the `new.html.erb` with some errors. So now in our `controllers/home_controllers.rb` in the `index` method we are going to lookup on that user as follows:

```rb

class HomeController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end
end
```

> Note that we are using the `find_by` method instead of the `find` because `find` throws an error if it doesn't find that user.

Now we will have the `user` that we can use in our `home/index.html.erb` view.

```html
<% if @user %>
<h3>You are logged in as <%= @user.username %></h3>
<% end %>
```

### Logging Out Users

Now that we can login users and persist their authentication we can now log them out. In our `config/routes.rb` we are going to add a `delete` method as follows

```rb
Rails.application.routes.draw do
  ...
  delete 'logout', to: "session#destroy"
end
```

After doing that we are then going to create a `session_controller.rb` file and add the following code in it:

```rb
class SessionController < ApplicationController
  def destroy
    session[:user_id] = nil
    flash.keep(:notice)
    redirect_to root_path, notice: "You are logged out!"
  end
end
```

Now that we have done that in our `home/index.html.erb` we can render a button that will allow use to run the `logout` functionality as follows:

```html
<% if @user %>
<h3>You are logged in as <%= @user.username %></h3>
<% end %> <%= button_to "Logout", logout_path, method: :delete, class: "btn
btn-secondary"%>
```

### Login the user

Now that we can be sign-up and logout, the next thing is to allow login of the user with available credentials. So we are going to do the same thing as we do in the sign-up so we are going to open the `routes.rb` and add the following routes

```rb
Rails.application.routes.draw do
  # sign in
  delete 'logout', to: "session#destroy"
  get 'sign_in', to: "session#new"
  post 'sign_in', to: "session#create"
end

```

Now we can go ahead and open the `session_controller.rb` file and add the following code in it:

```rb

class SessionController < ApplicationController
  def destroy
    session[:user_id] = nil
    flash.keep(:notice)
    redirect_to root_path, notice: "You are logged out!"
  end

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash.keep(:notice)
      redirect_to root_path, notice: "You are logged in as #{user[:username]}"
    else
      flash[:alert] = "Invalid credentials!!"
      render :new, status: :unprocessable_entity, content_type: "text/html"
    end
  end
end

```

In our `session/new.html.erb` we are going to go and add the following code:

```htm
<h1>Sign In</h1>
<%= form_with url: sign_in_path do |form| %>
<div class="mb-3">
  <%= form.label :email, class: "form-label"%> <%= form.text_field :email,
  placeholder: "email@gmail.com", class: "form-control"%>
</div>
<div class="mb-3">
  <%= form.label :password, class: "form-label"%> <%= form.password_field
  :password, placeholder: "password", class: "form-control"%>
</div>
<div class="mb-3"><%= form.submit "Sign In", class: 'btn btn-primary'%></div>
<% end %>
```

Now we can do authentication, which is basic logging in, logging out and creating accounts.

### Getting the User

Now that the authentication flow is working let's go ahead and learn how we can get the currently logged in user in any `controller` and in any `view` so we are going to create a `current.rb` file in the `app/models` folder and add the following code in it:

```rb
class Current < ActiveSupport::CurrentAttributes
  attribute :user
end
```

This class allows us to access user using the `Current` from any view or `controller`.

Next let's go ahead and edit the `controllers/application_controller.rb` and add the following code in it.

```rb
class ApplicationController < ActionController::Base
  add_flash_types :info, :warning, :error
  before_action :set_current_user

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end
end
```

So rails exposes to us the `before_action` property which allows us to run a method in each and every request that we are going to make in all the actions. Now in our `home_controller.rb` we can remove everything under the `index` method as follows:

```rb
class HomeController < ApplicationController
  def index
  end
end
```

Now we can then go ahead and change our `_navbar.html.erb` and check if the user is `logged` in or `not` and render stuff conditionally as follows:

```rb
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
  <%= link_to "Navbar", root_path, class: "navbar-brand" %>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      <% if Current.user %>
        <li class="nav-item">
          <span><%= Current.user.username %></span>
        </li>
        <%= button_to "Logout", logout_path, method: :delete, class: "btn btn-secondary btn-sm"%>
      <% else %>
        <li class="nav-item">
          <%= link_to "Sign In", sign_in_path, class: "nav-link" %>
        </li>
        <li class="nav-item">
          <%= link_to "Sign Up", sign_up_path, class: "nav-link" %>
        </li>
      <% end %>
      </ul>
    </div>
  </div>
</nav>
```

### Editing Password

Next we are going to create the functionality of editing password. First we will need to open the `config/routes.rb` and add two routes for password as follows:

```rb
Rails.application.routes.draw do
  ...
  # password
  get 'password', to: "passwords#edit", as: :edit_password
  patch 'password', to: "passwords#update"
end
```

Next we are then going to create a `passwords_controller.rb` file in the controllers folder and add the following code in it:

```rb

```

The `require_user_logged_in!` allows us to check if we are authenticated or not before performing the `passwords` action and we are defining it in the `application_controller.rb` file as follows:

```rb
class ApplicationController < ActionController::Base
  ....
  def require_user_logged_in!
    flash.keep(:alert)
    redirect_to sign_in_path, alert: "You need to be authenticated!!" if Current.user.nil?
  end
end

```

Now in our `_navbar.html.erb` we want to say when we click the `username` we go to the `edit_password` route so we need to modify it to look as follows

```rb
<% if Current.user %>
  <li class="nav-item">
    <%= link_to Current.user.username, edit_password_path, class: "nav-link"%>
  </li>
  <%= button_to "Logout", logout_path, method: :delete, class: "btn btn-secondary btn-sm"%>
<% else %>
  <li class="nav-item">
    <%= link_to "Sign In", sign_in_path, class: "nav-link" %>
  </li>
  <li class="nav-item">
    <%= link_to "Sign Up", sign_up_path, class: "nav-link" %>
  </li>
<% end %>
```

Then next we are going to create a file in our `views` called `passwords/edit.htm.erb` and add the following code in it:

```rb

<h1>Change Password</h1>
<%= form_with model: Current.user, url: edit_password_path do |form| %>
    <% if form.object.errors.any? %>
     <div class="alert alert-danger">
        <% form.object.errors.full_messages.each do |message| %>
            <div><%= message %></div>
        <% end %>
     </div>
    <% end %>
    <div class="mb-3">
        <%= form.label :password, class: "form-label"%>
        <%= form.password_field :password, placeholder: "password", class: "form-control"%>
    <div class="mb-3">
        <%= form.label :password_confirmation, class: "form-label"%>
        <%= form.password_field :password_confirmation, placeholder: "password", class: "form-control"%>
    </div>
    <div class="mb-3">
        <%= form.submit "Update Password", class: 'btn btn-primary'%>
    </div>
<% end %>

```

In our `password_controller.rb` we are going to add the following code that will handle the update password action.

```rb

class PasswordsController < ApplicationController
  before_action :require_user_logged_in!

  def edit
  end

  def update
    if Current.user.update(password_params)
      flash.keep(:notice)
      redirect_to root_path, notice: "Password has been updated!!"
    else
      render :edit, status: :unprocessable_entity, content_type: "text/html"
    end
  end

  private
  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```

```rb

```
