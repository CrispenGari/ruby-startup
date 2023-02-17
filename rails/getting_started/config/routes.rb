Rails.application.routes.draw do
  root to: "home#index"
  get '/about-us', to: "about#index", as: :about


  # signing up
  get 'sign_up', to: "signup#new"
  post 'sign_up', to: "signup#create"

end
