Rails.application.routes.draw do
  #get 'pages/home'

 #get 'pages/Home'

  root to: 'pages#home'
  devise_for :users

  resources :users, only: [:show]
  resources :events, except: [:destroy]
  # For details o the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
