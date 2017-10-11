Rails.application.routes.draw do
  resources :businesses, only: [:index, :show]
  resources :comments, only: :index
  resources :family_members, only: [:index, :show]
  resources :members, only: :index
  resources :professionals, only: [:index, :show]
end
