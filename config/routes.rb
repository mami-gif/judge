Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :products
  get "signup" => "users#new"
  get"login" => "users#login_form"
  post"login" => "users#login"
  get "logout" => "users#logout"
  post "logout" => "users#logout"

end

