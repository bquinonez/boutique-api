Rails.application.routes.draw do
  resources :cart_items
  resources :order_items
  resources :orders
  resources :items
  resources :reviews
  resources :categories
  resources :carts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #custom routes
  post '/charges', to: 'charges#create'
  post '/login', to: "users#login"
  get '/persist', to: "users#persist"
  get '/profile', to: "users#profile"
  delete '/cartitem/remove/:id', to: 'cart_items#destroy'
  delete '/cartitem/delete/:id', to: 'cart_items#deleteSingleItem'
  
end
