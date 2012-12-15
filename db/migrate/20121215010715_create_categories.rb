class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :site_id
      t.integer :position
      t.integer :parent_id

      t.timestamps
    end
  end
end
