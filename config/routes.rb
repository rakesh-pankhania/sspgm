Rails.application.routes.draw do
  resources :businesses, only: [:index, :show]
  resources :comments, only: :index
end
