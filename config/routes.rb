Rails.application.routes.draw do
  devise_for :users

  root 'orders#new'

  resources :orders

end
