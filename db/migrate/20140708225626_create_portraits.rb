class CreatePortraits < ActiveRecord::Migration
  def change
    create_table :portraits do |t|
      t.string :filename
      t.string :thumbnail
      t.string :description
      t.integer :user_id

      t.timestamps
    end
    add_index :portraits, [:user_id]
  end
end
