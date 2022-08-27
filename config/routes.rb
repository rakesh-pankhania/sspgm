Rails.application.routes.draw do
  devise_for :users

  resources :businesses, only: [:index]
  resources :comments, only: :index
  resources :family_members, only: :show
  resources :members, only: [:edit, :index, :update]
  resources :people, only: [:edit, :update]
  resources :professionals, only: [:edit, :index, :update]

  get 'answers',        to: 'high_voltage/pages#show', id: 'answers/index'
  get 'folksongs',      to: 'high_voltage/pages#show', id: 'folksongs/index'
  get 'elders',         to: 'high_voltage/pages#show', id: 'elders/index'
  get 'rising-stars',   to: 'high_voltage/pages#show', id: 'rising-stars/index'
  get 'sants-bhaktas',  to: 'high_voltage/pages#show', id: 'sants-bhaktas/index'
  get 'surnames',       to: 'high_voltage/pages#show', id: 'surnames/index'

  # Redirects for moved/deleted content
  get 'answersofwhy',       to: redirect('answers')
  get 'shreebhaimataji1',   to: redirect('folksongs/shreebhai-mataji-ni-prathna')
  get 'shreebhaimataji2',   to: redirect('folksongs/shreebhai-mataji-ni-prathna')
  get 'shreebhaimataji3',   to: redirect('folksongs/shreebhai-mataji-ni-arti')
  get 'shreebhaimataji4',   to: redirect('folksongs/shreebhai-mataji-no-thal')
  get 'sspgmdedication',    to: redirect('sants-bhaktas')
  get 'sspgmfolksongs',     to: redirect('folksongs')
  get 'sspgmhistory2',      to: redirect('sspgmhistory3')

  get 'sspgmsurnames',  to: redirect('surnames')
  get 'fatania',        to: redirect('surnames/fatania')
  get 'pankhania',      to: redirect('surnames/pankhania')

  get 'sspgmsantsbhaktas',  to: redirect('sants-bhaktas')
  get 'sspgmsb1',           to: redirect('sants-bhaktas/prajapati-bhakta-shree-bogahram')
  get 'sspgmsb2',           to: redirect('sants-bhaktas/prajapati-bhagat-shree-chindal-bhagat')
  get 'sspgmsb3',           to: redirect('sants-bhaktas/prajapati-sant-shree-gora-bhagat')
  get 'sspgmsb4',           to: redirect('sants-bhaktas/prajapati-bhagat-shree-hira-bhagat')
  get 'sspgmsb5',           to: redirect('sants-bhaktas/prajapati-bhakta-shree-jina-bhagat')
  get 'sspgmsb6',           to: redirect('sants-bhaktas/prajapati-sant-shree-jiva-bhagat')
  get 'sspgmsb7',           to: redirect('sants-bhaktas/prajapati-bhakta-shree-jiva-bhagat')
  get 'sspgmsb8',           to: redirect('sants-bhaktas/prajapati-bhakta-kala-bhagat')
  get 'sspgmsb9',           to: redirect('sants-bhaktas/prajapati-bhakta-shree-karshan-bhakta')
  get 'sspgmsb10',          to: redirect('sants-bhaktas/prajapati-bhagat-shree-kubaji')
  get 'sspgmsb11',          to: redirect('sants-bhaktas/prajapati-sant-shree-mepa-bhagat')
  get 'sspgmsb12',          to: redirect('sants-bhaktas/prajapati-bhakta-shree-ramji-bhagat')
  get 'sspgmsb13',          to: redirect('sants-bhaktas/prajapati-bhakta-shree-shamji-bhagat')
  get 'sspgmsb14',          to: redirect('sants-bhaktas/prajapati-bhagat-shree-virji-bhagat')

  get 'sspgmprofiles',    to: redirect('elders')
  get 'sspgmprofile1',    to: redirect('elders/masribhai-jerambhai-pankhania')
  get 'sspgmprofile2',    to: redirect('elders/mohanlal-virjibhai-fatania')
  get 'sspgmprofile3',    to: redirect('elders/nathabhai-jadavbhai-koria')
  get 'sspgmprofile4',    to: redirect('elders/madhavjibhai-narsi-devalia')
  get 'sspgmprofile5',    to: redirect('elders/prabjibhai-jinabhai-ladva')
  get 'sspgmprofile6',    to: redirect('elders/tulsidas-becharbhai-pankhania')
  get 'sspgmprofile7',    to: redirect('elders/premjibhai-bhura-dhokia')
  get 'sspgmprofile8',    to: redirect('elders/vinodbhai-khimjibhai-fatania')
  get 'sspgmprofile9',    to: redirect('elders/karsanbhai-becharbhai-pankhania')
  get 'sspgmprofile10',   to: redirect('elders/laljibhai-ranmalbhai-koria')
  get 'sspgmprofile11',   to: redirect('elders/sumitraben-parsotambhai-chavda')
  get 'sspgmprofile12',   to: redirect('elders/jatin-vinod-fatania')
  get 'sspgmprofile13',   to: redirect('elders/rajesh-bhimji-jadav')
  get 'sspgmprofile14',   to: redirect('elders/hirajibhai-punjabhai-jagatiya')
  get 'sspgmprofile15',   to: redirect('elders/dhansukh-shivabhai-parmar')
  get 'sspgmprofile16',   to: redirect('elders/virji-jeram-shingadia')
  get 'sspgmprofile17',   to: redirect('elders/anila-girishkumar-kukadia')
  get 'sspgmprofile18',   to: redirect('elders/vallabh-devshi-pankhania')
  get 'sspgmprofile19',   to: redirect('elders/vinodbhai-masribhai-pankhania')

  get 'risingstars',      to: redirect('rising-stars')
  get 'risingadevalia',   to: redirect('rising-stars/arvind-madhavji-devalia')
  get 'risingmladwa',     to: redirect('rising-stars/manoj-mohanbhai-ladwa')
  get 'risingrgohil',     to: redirect('rising-stars/riten-hirjibhai-gohil')
end
