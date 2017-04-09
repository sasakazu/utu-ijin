Rails.application.routes.draw do


  root 'pages#home'

  resources :users
  resources :knowledges
  resources :books
  resources :goodnews
  resources :ijins

  get 'pages/contact'
  get 'pages/checker'

  # get 'ijins/jobs'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
