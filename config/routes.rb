Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/profile', to: 'users#profile', as: 'profile'
  # get '/payment', to: 'orders#payment', as: 'payment'
  # get '/orders/:id/checkout', to: 'orders#checkout', as: 'checkout'
  resources :orders, except: [:index, :new, :create] do
    resources :payments, only: [:new, :create]
  end
  get 'orders/add/:product_id', to: 'orders#add_to_cart', as: 'add_to_cart'
  get 'orders/remove/:product_id', to: 'orders#remove_from_cart', as: 'remove_from_cart'
  resources :products, except: [:index, :show, :edit, :update, :destroy ] do
    resources :reviews, only: [:create, :new ]
  end
  get "products/:order_id", to: "products#index", as: "browse"
end
