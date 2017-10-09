Rails.application.routes.draw do
  resources :professionals, only: [:index, :show]
  resources :businesses, only: [:index, :show]
  resources :comments, only: :index
end
