Rails.application.routes.draw do
  get 'users' => 'users#users'
  get 'users/show'

  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:create, :edit, :index, :show, :destroy]

  resources :users, only: [:show, :edit, :update]
end
