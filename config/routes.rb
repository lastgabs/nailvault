Rails.application.routes.draw do
  devise_for :users
  root 'nail_polishes#index'

  resources :nail_polishes
  resources :collections
  resources :brands
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
