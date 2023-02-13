Rails.application.routes.draw do
  root to: "home#index"
  get '/about-us', to: "about#index", as: :about
end
