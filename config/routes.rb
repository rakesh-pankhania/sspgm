Rails.application.routes.draw do
  devise_for :users
  root to: 'high_voltage/pages#show', id: 'home'

  resources :businesses, only: [:index]
  resources :comments, only: :index
  resources :family_members, only: :show
  resources :members, only: [:edit, :index, :update]
  resources :professionals, only: [:index]
end
