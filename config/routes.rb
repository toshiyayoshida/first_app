Rails.application.routes.draw do
  resources :categories, only: [:show]
  resources :shops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'shops#home'
  match '/info', to: 'shops#info', via: 'get'
end
