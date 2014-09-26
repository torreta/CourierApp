Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/pricing'

  get 'welcome/people'

  resources :agencies

  root to: 'agencies#index'
end
