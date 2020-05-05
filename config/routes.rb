Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  get "signup" => "users#new"
  get"login" => "users#login_form"
  post"login" => "users#login"
end
