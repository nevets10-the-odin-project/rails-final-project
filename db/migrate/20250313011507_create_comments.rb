class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.references :post, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
