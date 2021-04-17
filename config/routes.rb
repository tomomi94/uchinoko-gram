Rails.application.routes.draw do
  devise_for :users
  get 'tweets/index'
  root to: 'tweets#index'
  resources :tweets, only: [:index, :new, :create, :show]
end
