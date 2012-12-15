class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name
      t.string :html_tag
      t.string :content
      t.integer :page_id

      t.timestamps
    end
  end
end
