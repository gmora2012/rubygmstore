class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :color
      t.string :category
      t.string :size
      t.integer :price
      t.string :stores
      t.index :store_id

      t.timestamps
    end
  end
end
