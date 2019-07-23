Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/profile', to: 'users#profile', as: 'profile'
  resources :orders, except: [:index]
  resources :products do
    resources :reviews, only: [:create, :new]
  end
end
