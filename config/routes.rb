Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]
  get '/about', to: 'homes#about', as: 'about' 
  end