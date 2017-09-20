class CreateDroneCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :drone_categories do |t|
      t.integer :category_id
      t.integer :drone_id

      t.timestamps
    end
  end
end
