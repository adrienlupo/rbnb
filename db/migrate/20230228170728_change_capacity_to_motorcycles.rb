class ChangeCapacityToMotorcycles < ActiveRecord::Migration[7.0]
  def change
    remove_column :motorcycles, :capacity
    add_column :motorcycles, :capacity, :string
  end
end
