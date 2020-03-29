Rails.application.routes.draw do
  resources :products
  resources :items
 root 'static_pages#home'
 
 get '/about' =>'static_pages#about'
 get '/help' => 'static_pages#help'
 
 
 
 # get 'static_pages/home'
 # get 'static_pages/help'
 # get 'static_pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
