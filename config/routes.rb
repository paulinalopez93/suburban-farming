Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/profile', to: 'users#profile', as: 'profile'
  get '/payment', to: 'orders#payment', as: 'payment'
  resources :orders, except: [:index, :new, :create]
  get 'orders/add/:product_id', to: 'orders#add_to_cart', as: 'add_to_cart'
  get 'orders/remove/:product_id', to: 'orders#remove_from_cart', as: 'remove_from_cart'
  resources :products do
    resources :orders, only: [:new, :create]
    resources :reviews, only: [:create, :new ]
  end
end
