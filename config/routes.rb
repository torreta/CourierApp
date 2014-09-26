Rails.application.routes.draw do
  resources :agencies

  root to: 'agencies#index'
end
