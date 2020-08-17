class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.integer :price
      t.string :name
      t.string :food_type
      t.timestamp
    end
  end
end
