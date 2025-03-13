class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, inverse_of: 'author', foreign_key: 'author_id'
  has_many :comments, inverse_of: 'author', foreign_key: 'author_id'
  has_many :commented_posts, through: :comments, inverse_of: 'commenters'
  has_many :likes
  has_many :liked_posts, through: 'likes', inverse_of: 'user_likes'
end
