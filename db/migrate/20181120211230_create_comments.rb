class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :likes
      t.integer :dislikes
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps
    end
  end
end
