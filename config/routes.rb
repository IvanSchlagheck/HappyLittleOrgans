Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :organs, only: [:show, :index, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [ :new, :create ]
  end
  get 'dashboard', to: 'dashboards#index'

  resources :bookings, only: [ ] do
      resources :reviews, only: [ :new, :create ]
    end
end
