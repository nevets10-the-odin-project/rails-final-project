class CreateUserFollows < ActiveRecord::Migration[8.0]
  def change
    create_table :user_follows do |t|
      t.integer :follower_id
      t.integer :followee_id

      t.timestamps
    end
  end
end
