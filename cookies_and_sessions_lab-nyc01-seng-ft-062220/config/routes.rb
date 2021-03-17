Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products 
  post '/' => 'products#add'
  get  '/' => 'products#index'
end