class AddFkToUserFollows < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :user_follows, :users, column: :follower_id, primary_key: :id
    add_foreign_key :user_follows, :users, column: :followee_id, primary_key: :id
  end
end
