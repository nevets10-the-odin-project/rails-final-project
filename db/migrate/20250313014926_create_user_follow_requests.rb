class CreateUserFollowRequests < ActiveRecord::Migration[8.0]
  def change
    create_table :user_follow_requests do |t|
      t.integer :follow_recipient_id
      t.integer :follow_submitter_id

      t.timestamps
    end
  end
end
