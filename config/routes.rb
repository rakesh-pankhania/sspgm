Rails.application.routes.draw do
  devise_for :users

  resources :businesses, only: [:index]
  resources :comments, only: :index
  resources :family_members, only: :show
  resources :members, only: [:edit, :index, :update]
  resources :people, only: [:edit, :update]
  resources :professionals, only: [:edit, :index, :update]

  get 'answers',                    to: 'high_voltage/pages#show', id: 'answers/index'
  get 'folksongs',                  to: 'high_voltage/pages#show', id: 'folksongs/index'
  get 'elders',                     to: 'high_voltage/pages#show', id: 'elders/index'
  get 'mandals',                    to: 'high_voltage/pages#show', id: 'mandals/index'
  get 'mandals/atlanta',            to: 'high_voltage/pages#show', id: 'mandals/atlanta/index'
  get 'mandals/baroda',             to: 'high_voltage/pages#show', id: 'mandals/baroda/index'
  get 'mandals/bolton',             to: 'high_voltage/pages#show', id: 'mandals/bolton/index'
  get 'mandals/east-london',        to: 'high_voltage/pages#show', id: 'mandals/east-london/index'
  get 'mandals/jamnagar',           to: 'high_voltage/pages#show', id: 'mandals/jamnagar/index'
  get 'mandals/leicester',          to: 'high_voltage/pages#show', id: 'mandals/leicester/index'
  get 'mandals/mumbai',             to: 'high_voltage/pages#show', id: 'mandals/mumbai/index'
  get 'mandals/nairobi',            to: 'high_voltage/pages#show', id: 'mandals/nairobi/index'
  get 'mandals/porbandar',          to: 'high_voltage/pages#show', id: 'mandals/porbandar/index'
  get 'mandals/ramnagar',           to: 'high_voltage/pages#show', id: 'mandals/ramnagar/index'
  get 'mandals/talala',             to: 'high_voltage/pages#show', id: 'mandals/talala/index'
  get 'mandals/united-kingdom',     to: 'high_voltage/pages#show', id: 'mandals/united-kingdom/index'
  get 'mandals/valabh-vidyanagar',  to: 'high_voltage/pages#show', id: 'mandals/valabh-vidyanagar/index'
  get 'member-services',            to: 'high_voltage/pages#show', id: 'member-services/index'
  get 'rising-stars',               to: 'high_voltage/pages#show', id: 'rising-stars/index'
  get 'sants-bhaktas',              to: 'high_voltage/pages#show', id: 'sants-bhaktas/index'
  get 'surnames',                   to: 'high_voltage/pages#show', id: 'surnames/index'
  get 'trust-funds',                to: 'high_voltage/pages#show', id: 'trust-funds/index'

  # Redirects for moved/deleted content
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

  get 'sspgmatlanta',     to: redirect('mandals/atlanta')
  get 'atlantawelcome',   to: redirect('mandals/atlanta/history')
  get 'usconstitution',   to: redirect('mandals/atlanta/constitution')
  get 'pres2003',         to: redirect('mandals/atlanta/committee-2003')
  get 'sspgmatlpres',     to: redirect('mandals/atlanta/committee-2000')
  get 'sspgmphotos',      to: redirect('mandals/atlanta/photos')
  get 'relieffund',       to: redirect('mandals/atlanta/events/2001-02-10-earthquake-relief-fund')
  get 'easter2002',       to: redirect('mandals/atlanta/events/2002-03-31-easter-holi-picnic')
  get 'sundarkandphotos', to: redirect('mandals/atlanta/events/2004-02-07-sundarkand-path')

  get 'barhist',            to: redirect('mandals/baroda/history')
  get 'barmem',             to: redirect('mandals/baroda/committee')
  get 'baroda',             to: redirect('mandals/baroda')

  get 'ukbolton',           to: redirect('mandals/bolton')
  get 'ukboltonposition',   to: redirect('mandals/bolton/history')
  get 'ukboltonpresident',  to: redirect('mandals/bolton/committee')
  get 'ukboltonexecutive',  to: redirect('mandals/bolton/committee')

  get 'sspgmeastlondon',    to: redirect('mandals/east-london')

  get 'jamnagar',           to: redirect('mandals/jamnagar')
  get 'jamnagarhistory',    to: redirect('mandals/jamnagar/history')
  get 'jam2',               to: redirect('mandals/jamnagar/committee')

  get 'sspgmleicester',     to: redirect('mandals/leicester')
  
  get 'mumbai',             to: redirect('mandals/mumbai')
  get 'mumbaiintro',        to: redirect('mandals/mumbai/about')
  get 'mumbaiexec',         to: redirect('mandals/mumbai/committee')
  get 'educationtrust',     to: redirect('mandals/mumbai/lunai-mataji-education-trust')

  get 'nairobi',          to: redirect('mandals/nairobi')
  get 'nairobi_about',    to: redirect('mandals/nairobi/about')
  get 'nairobi_photos',   to: redirect('mandals/nairobi/photos')
  get 'nairobi_temple',   to: redirect('mandals/nairobi/temple')
  get 'nairobihistory',   to: redirect('mandals/nairobi/history')

  get 'porbandar',          to: redirect('mandals/porbandar')
  get 'porbandarhistory',   to: redirect('mandals/porbandar/history')
  get 'porbandarhistory2',  to: redirect('mandals/porbandar/establishment')
  
  get 'ramnagar',           to: redirect('mandals/ramnagar')
  get 'ramnagarcommittee',  to: redirect('mandals/ramnagar/committee')

  get 'talala',           to: redirect('mandals/talala')
  get 'talalaexec',       to: redirect('mandals/talala/committee')

  get 'sspgmuk',            to: redirect('mandals/united-kingdom')
  get 'ukwelcome',          to: redirect('mandals/united-kingdom/history')
  get 'ukconstitution',     to: redirect('mandals/united-kingdom/constitution')
  get 'ukseat',             to: redirect('mandals/united-kingdom/1977-mandal-meeting')

  get 'valabhvidyanagar', to: redirect('mandals/valabh-vidyanagar')
  get 'vvnwelcome',       to: redirect('mandals/valabh-vidyanagar/trust-fund')
  get 'vvnupdate',        to: redirect('mandals/valabh-vidyanagar/trust-fund-update')

  # Redirects for other moved/deleted content
  get 'answersofwhy',       to: redirect('answers')
  get 'shreebhaimataji1',   to: redirect('folksongs/shreebhai-mataji-ni-prathna')
  get 'shreebhaimataji2',   to: redirect('folksongs/shreebhai-mataji-ni-prathna')
  get 'shreebhaimataji3',   to: redirect('folksongs/shreebhai-mataji-ni-arti')
  get 'shreebhaimataji4',   to: redirect('folksongs/shreebhai-mataji-no-thal')
  get 'sspgmdedication',    to: redirect('sants-bhaktas')
  get 'sspgmfolksongs',     to: redirect('folksongs')
  get 'sspgmhistory2',      to: redirect('sspgmhistory3')
  get 'tourisminfoindia',   to: redirect('member-services/nitin-shingadia')
  get 'voluntary',          to: redirect('member-services')

  get 'diwali', to: redirect('articles/the-meaning-of-diwali')
  get 'gujaratiorigin', to: redirect('articles/origin-of-the-gujarati-language')
  get 'hanuman', to: redirect('articles/the-legend-of-shree-hanumanji')
  get 'journey', to: redirect('articles/sspgm-members-global-journey')
  get 'krishna', to: redirect('articles/the-stories-of-shree-krishna')
  get 'rakshabandhan', to: redirect('articles/the-meaning-of-raksha-bandhan')
  get 'ramapeerparcha', to: redirect('articles/ramapeer-parcha')
  get 'ramnavami', to: redirect('articles/ramnavami-festival')
  get 'shivratri', to: redirect('articles/shivratri-utsav')
  get 'sspgmhistory3', to: redirect('articles/the-history-of-sspgm')
  get 'sspgmkurdevi', to: redirect('articles/kurdevi')
  get 'sspgmshreebai2', to: redirect('articles/the-story-of-shreebai-mataji')
  get 'sspgmwelcome',       to: redirect('articles/welcome')
  get 'stillwheel', to: redirect('articles/the-still-wheel')
  
  get 'trustfunds', to: redirect('trust-funds')
  get 'kelvanitrust', to: redirect('trust-funds/kelvani-trust')
  get 'educationtrustjunagadh', to: redirect('trust-funds/shribai-kanya-chhatralay-education-trust-junagadh')
end
