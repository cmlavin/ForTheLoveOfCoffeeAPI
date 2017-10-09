class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :cafe_id
      t.string :title
      t.text :content
      t.integer :rating
      t.datetime :created_at
      t.datetime :edited_at
      t.timestamps
    end
  end
end
