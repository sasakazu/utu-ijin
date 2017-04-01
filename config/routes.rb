Rails.application.routes.draw do


  root 'pages#home'

  resources :users
  resources :knowledges
  resources :books

  # resources :ijins

  get 'pages/contact'
  get 'pages/goodnews'
  get 'pages/checker'



  get 'ijins/ainsyutain'
  get 'ijins/jobs'
  get 'ijins/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
