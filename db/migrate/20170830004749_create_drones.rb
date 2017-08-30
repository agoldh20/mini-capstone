class CreateDrones < ActiveRecord::Migration[5.1]
  def change
    create_table :drones do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.integer :price

      t.timestamps
    end
  end
end
