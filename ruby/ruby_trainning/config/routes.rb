Rails.application.routes.draw do
  resources :tags
  resources :posts
  get 'sessions/new'

  resources :users
  root 'home#index'
  get    'home/index',  to: 'home#index'
  get    '/register',  to: 'users#new'

  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
