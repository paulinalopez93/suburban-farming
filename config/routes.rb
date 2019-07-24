Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/profile', to: 'users#profile', as: 'profile'
  get '/payment', to: 'orders#payment', as: 'payment'
  resources :orders, except: [:index] do
  get 'orders/:product_id', to: 'orders#add_to_cart', as: 'add_to_cart'
  resources :products do
    resources :reviews, only: [:create, :new]
    end
  end
end
