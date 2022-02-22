Rails.application.routes.draw do
  
  
  devise_for :users
  root to: "homes#top"
  
  
  resources :books
  get 'homes/about' => 'homes#about', as: 'about'
  resources :users
end
