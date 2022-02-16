Rails.application.routes.draw do
  
  
  devise_for :users
  root to: "homes#top"
  
  
  resources :books, only: [:new, :reate,:index, :show, :edit, :destroy]
  get 'homes/about' => 'homes#about', as: 'about'
  resources :users, only:[:index, :show, :edit]
end
