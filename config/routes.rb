Rails.application.routes.draw do
  resources :businesses, only: [:index, :show]
  resources :comments, only: :index
  resources :members, only: :index
  resources :professionals, only: [:index, :show]
end
