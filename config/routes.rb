Rails.application.routes.draw do
  
  devise_for :users

  root 'orders#new'

  resources :orders

  match '/order',    				to: 'static_pages#order',    				via: 'get'
  match '/for_clients',   	to: 'static_pages#for_clients',   	via: 'get'
  match '/for_drivers', 		to: 'static_pages#for_drivers', 		via: 'get'
  
  resources :service_qualities

end
