Rails.application.routes.draw do

  devise_for :users
  get 'dashboard_controller/index'
  root 'dashboard#index'

  resources :customers, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
