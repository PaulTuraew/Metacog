Rails.application.routes.draw do
  root 'welcome#index'
  resources :users
  get "/register", to: 'users#new'


end
