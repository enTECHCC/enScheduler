Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'
  get '/users/login', to: 'users#login'
  post 'users/login', to: 'users#req'
  get '/users/login/failure', to: 'users#failure'
  get '/users/new/success', to: 'users#success'
  resources :seniors
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
