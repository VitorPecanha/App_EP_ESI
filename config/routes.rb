Rails.application.routes.draw do
  
  devise_for :user_sessions
  resources :users
  resources :plants
  resources :videos
  get 'home/admin'
  root 'home#admin'
  


  devise_for :users
  devise_scope :user do
  get '/user_sessions/sign_out' => 'devise/sessions#destroy'
end
  
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
