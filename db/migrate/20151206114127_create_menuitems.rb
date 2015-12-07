class CreateMenuitems < ActiveRecord::Migration
  def change
    create_table :menuitems do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :section
      t.string :image

      t.timestamps
    end
  end
end
