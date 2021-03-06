Rails.application.routes.draw do

  devise_for :users
  resources :comparisons
  resources :customers, only: [:index]
  resources :documents
  get 'documents/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'
end
