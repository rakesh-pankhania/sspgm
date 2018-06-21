Rails.application.routes.draw do
  devise_for :users
  root to: 'high_voltage/pages#show', id: 'home'

  resources :businesses, only: [:index]
  resources :comments, only: :index
  resources :family_members, only: :show
  resources :members, only: [:edit, :index, :update] do
    member do
      get 'basic'
    end
  end
  resources :professionals, only: [:edit, :index, :update]
end
