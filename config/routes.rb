Rails.application.routes.draw do
  get 'reservas/list' => 'reservas#list'  
  resources :reservas
  
  get 'admin/index'

  get 'reservas/index'
  
  post 'admin/home' => 'admin/home.html.erb'

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
