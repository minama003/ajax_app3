Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tweets#index'
  resources :users, only: :show
  resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update, :show]
end