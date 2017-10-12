Rails.application.routes.draw do
  resources :categories
  #get 'pages/home'

 #get 'pages/Home'

  root to: 'pages#home'
  devise_for :users
  resources :photos

  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]
   get "about" => "pages#about"
  # For details o the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
