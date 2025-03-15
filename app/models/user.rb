class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, inverse_of: 'author', foreign_key: 'author_id'
  has_many :comments, inverse_of: 'author', foreign_key: 'author_id'
  has_many :commented_posts, through: :comments, inverse_of: 'commenters'
  has_many :likes
  has_many :liked_posts, through: :likes, inverse_of: 'user_likes'
  has_many :follower_requests, class_name: 'UserFollowRequest', inverse_of: 'follow_recipient',
                               foreign_key: 'follow_recipient_id'
  has_many :followee_requests, class_name: 'UserFollowRequest', inverse_of: 'follow_submitter',
                               foreign_key: 'follow_submitter_id'
  has_many :followers, class_name: 'UserFollow', inverse_of: 'followee', foreign_key: 'followee_id'
  has_many :followees, class_name: 'UserFollow', inverse_of: 'follower', foreign_key: 'follower_id'
end
