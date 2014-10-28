Rails.application.routes.draw do

  root 'welcome#index'
  resources :users
  resources :sessions, only: [:new, :create]

  get "/register", to: 'users#new'

  get '/signin', to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'

end
