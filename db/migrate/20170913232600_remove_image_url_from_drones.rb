class RemoveImageUrlFromDrones < ActiveRecord::Migration[5.1]
  def change
    remove_column :drones, :image_url, :string
  end
end
