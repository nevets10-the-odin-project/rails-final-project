class UserFollowRequest < ApplicationRecord
  belongs_to :follow_recipient, class_name: 'User'
  belongs_to :follow_submitter, class_name: 'User'
end
