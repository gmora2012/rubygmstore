class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :street
      t.bigint :number
      t.bigint :zipcode
      t.string :city
      t.string :country
      t.string :products

      t.timestamps
    end
  end
end
