Rails.application.routes.draw do
  root to: 'items#index'

  resource :session, only: [:new, :create, :destroy]

  resources :demands, only: [:create, :update, :destroy]
  resources :items, only: [:create, :update]
end
