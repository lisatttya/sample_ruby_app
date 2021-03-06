Rails.application.routes.draw do
  root 'static_pages#home'
  #get 'users/new'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get 'users/show'
  get 'users', to: 'users#index'
  post '/signup',  to: 'users#create'
  resources :users
end
