class AddFkToUserFollowRequests < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :user_follow_requests, :users, column: :follow_recipient_id, primary_key: :id
    add_foreign_key :user_follow_requests, :users, column: :follow_submitter_id, primary_key: :id
  end
end
