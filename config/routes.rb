Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
  devise_for :users
  root to: 'pages#home'
  resources :products, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
