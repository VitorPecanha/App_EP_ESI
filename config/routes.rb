Rails.application.routes.draw do
  get 'home/admin'
  get 'home/plants/_form'
  root 'home#admin'
  #get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
