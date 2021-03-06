class CreateTextbooks < ActiveRecord::Migration[5.0]
  def change
    create_table :textbooks do |t|
      t.string :name, null:false
      t.string :price, null:false
      t.string :course, null:false
      t.string :instructor, null:false
      t.text :description, null: false
      t.belongs_to :user, null:false, foreign_key: true
      
      t.timestamps null: false
    end
      add_index :textbooks, [:user_id, :name]
  end
end
