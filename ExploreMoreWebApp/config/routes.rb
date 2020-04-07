Rails.application.routes.draw do
  get 'cart/index'
  resources :products
  resources :items
 root 'static_pages#home'
 
 get '/about' =>'static_pages#about'
 get '/contact' => 'static_pages#contact'
 
 get '/login' => 'user#login' 
 get '/logout' => 'user#logout'


get '/cart/clear', to: 'cart#clearCart' 
get '/cart/:id', to: 'cart#add'
  get '/clearcart', to: 'cart#clearCart'
 get '/cart/remove/:id' => 'cart#remove'#
  get '/cart/decrease/:id' => 'cart#decrease'
     get '/cart', to: 'cart#index'
    
 

 
 
 # get 'static_pages/home'
 # get 'static_pages/help'
 # get 'static_pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
