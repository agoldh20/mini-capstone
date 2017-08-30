class CreateDrones < ActiveRecord::Migration[5.1]
  def change
    create_table :drones do |t|
      t.string :brand
      t.string :color
      t.string :feature
      t.integer :range
      t.string :image_url
      t.integer :rotors
      t.integer :price

      t.timestamps
    end
  end
end
