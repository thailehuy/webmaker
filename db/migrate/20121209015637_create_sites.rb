class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :subdomain
      t.integer :theme_id
      t.integer :owner_id
      t.timestamps
    end
  end
end
