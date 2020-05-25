Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users 
  get "signup" => "users#new"
  get "login" => "users#login_form"
  post"login" => "users#login"
  get "logout" => "users#logout"
  post"logout" => "users#logout"
  
  resources :products do
     resources :reviews
     
  end
end

