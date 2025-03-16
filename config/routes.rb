Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users
  resources :posts, :users
  resources :comments, only: %i[new create update destroy]
  resources :likes, :user_follows, :user_follow_requests, only: %i[create destroy]
  resources :user_follows, :user_follow_requests, only: %i[create destroy]
  resources :user_follow_requests, only: %i[create destroy]
end
