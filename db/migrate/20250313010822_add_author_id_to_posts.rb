class AddAuthorIdToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :author_id, :integer
    add_foreign_key :posts, :users, column: :author_id, primary_key: :id
  end
end
