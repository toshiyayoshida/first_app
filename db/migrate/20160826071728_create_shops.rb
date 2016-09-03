class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.integer :category_id, :null => false
      t.string :address, :null => false
      t.text :message, :null => false
      t.string :user_name, :null => false

      t.timestamps null: false
    end
    add_index :shops, :category_id
  end
end