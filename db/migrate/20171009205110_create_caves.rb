class CreateCaves < ActiveRecord::Migration[5.1]
  def change
    create_table :caves do |t|

      t.timestamps
    end
  end
end
