Rails.application.routes.draw do
  resources :admins
  get 'reservas/list' => 'reservas#list'  
  resources :reservas
  
  resources :admins_sessions
  match 'login' => 'admins_sessions#new', :via => [:get], as: :login
  match 'logout' => 'admins_sessions#destroy', :via => [:get], as: :logout
  
  get 'admin/index'

  get 'reservas/index'

  get 'welcome/index'

  resources :funcionarios
  get "welcome/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
end
