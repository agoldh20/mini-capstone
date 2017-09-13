class AddSupplierIdToDrones < ActiveRecord::Migration[5.1]
  def change
    add_column :drones, :supplier_id, :integer
  end
end
