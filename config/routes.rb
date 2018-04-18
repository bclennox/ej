Rails.application.routes.draw do
  root to: 'items#index'

  resource :session, only: [:new, :create, :destroy]
end
