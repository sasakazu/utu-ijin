Rails.application.routes.draw do

  root 'pages#home'

  resources :users
  resources :ijins

  get 'pages/contact'

  get 'pages/book'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
