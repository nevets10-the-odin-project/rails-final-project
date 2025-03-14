Rails.application.routes.draw do
  devise_for :users
  resources :posts, :users
  resources :comments, only: %i[new create update destroy]
  resources :likes, :user_follows, :user_follow_requests, only: %i[create destroy]
  root 'posts#index'
end
