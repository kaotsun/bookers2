Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show, :index, :edit, :update]
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy]

  root 'home#top'
  get 'home/about'
  get 'searches/search', as: 'search'
end
