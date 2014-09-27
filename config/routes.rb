Rails.application.routes.draw do
  get 'profile/edit'

  devise_for :users
  resources :packages

  resources :rates

  resources :agencies

  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/pricing'

  get 'welcome/people'
  
  root to: 'welcome#index'
  
end
