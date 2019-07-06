Rails.application.routes.draw do
  root to: 'sayings#index'
  resources :sayings
  resources :sources
  resources :sayers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
