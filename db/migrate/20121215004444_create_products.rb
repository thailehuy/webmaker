class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :category_id
      t.string :gender
      t.text :description
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
