Rails.application.routes.draw do
  resources :agencies

  root to: 'welcome#index'
end
