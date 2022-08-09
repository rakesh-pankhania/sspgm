Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#show', id: 'home'

  resources :businesses, only: [:index]
  resources :comments, only: :index
  resources :family_members, only: :show
  resources :members, only: [:edit, :index, :update]
  resources :people, only: [:edit, :update]
  resources :professionals, only: [:edit, :index, :update]

  # Redirects for deleted content
  get 'answersofwhy', to: redirect('/answers/index')
  get 'shreebhaimataji1', to: redirect('/folksongs/shreebhai_mataji_ni_prathna')
  get 'shreebhaimataji2', to: redirect('/folksongs/shreebhai_mataji_ni_prathna')
  get 'shreebhaimataji3', to: redirect('/folksongs/shreebhai_mataji_ni_arti')
  get 'shreebhaimataji4', to: redirect('/folksongs/shreebhai_mataji_no_thal')
  get 'sspgmdedication', to: redirect('/sspgmsantsbhaktas')
  get 'sspgmhistory2', to: redirect('/sspgmhistory3')
  get 'sspgmfolksongs', to: redirect('/folksongs/index')
  
  get 'sspgmsurnames', to: redirect('/surnames/index')
  get 'fatania', to: redirect('/surnames/fatania')
  get 'pankhania', to: redirect('/surnames/pankhania')

  get '*id' => 'pages#show', as: :page, format: false
end
