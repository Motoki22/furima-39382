Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :users, only: [:show]
  resources :items, only: [:new, :create, :index, :show, :edit, :update]
end
