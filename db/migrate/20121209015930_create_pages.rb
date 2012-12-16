class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :type
      t.integer :site_id
      t.string :path
      t.timestamps
    end
  end
end
