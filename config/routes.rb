Rails.application.routes.draw do
  resources :posts
  resources :comments, only: %i[new create update destroy]
  devise_for :users
  root 'posts#index'
end
