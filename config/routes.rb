Rails.application.routes.draw do
  get 'home/admin'
  root 'home#admin'

  resources :users
  resources :plants
  resources :videos
  
  #get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
