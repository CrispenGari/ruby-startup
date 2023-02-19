Rails.application.routes.draw do
  root to: "home#index"
  get '/about-us', to: "about#index", as: :about

  # sign in
  delete 'logout', to: "session#destroy"
  get 'sign_in', to: "session#new"
  post 'sign_in', to: "session#create"

  # signing up
  get 'sign_up', to: "signup#new"
  post 'sign_up', to: "signup#create"

  # password
  get 'password', to: "passwords#edit", as: :edit_password
  patch 'password', to: "passwords#update"

  # reset password
  get 'password/reset', to: "password_resets#new"
  post 'password/reset', to: "password_resets#create"

end
