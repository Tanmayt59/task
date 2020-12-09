Rails.application.routes.draw do
  root 'questions#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy] 
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :questions do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
end
