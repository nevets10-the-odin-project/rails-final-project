Rails.application.routes.draw do
  resources :posts
  resources :comments, only: %i[new create update destroy]
  resources :likes, only: %i[create destroy]
  devise_for :users
  root 'posts#index'
end
