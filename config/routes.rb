Rails.application.routes.draw do
  get 'users' => 'users#users'
  get 'users/show'
  get 'home/about' => 'homes#about'
  #post 'books/:id' => 'books#create'

  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:create, :edit, :update, :index, :show, :destroy]

  resources :users, only: [:show, :edit, :update]
end
