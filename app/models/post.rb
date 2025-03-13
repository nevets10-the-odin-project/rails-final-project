class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :commenters, through: :comments, inverse_of: 'commented_posts'
  has_many :likes
  has_many :user_likes, through: 'likes', inverse_of: 'liked_posts'
end
