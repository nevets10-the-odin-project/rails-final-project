Rails.application.routes.draw do
  devise_for :users
  resources :posts, :users
  resources :comments, only: %i[new create update destroy]
  resources :likes, only: %i[create destroy]
  root 'posts#index'
end
