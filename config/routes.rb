Rails.application.routes.draw do
  resources :agencies

  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/pricing'

  get 'welcome/people'
  
  root to: 'welcome#index'
  
end
