class AddCoordinatesToMotorcycles < ActiveRecord::Migration[7.0]
  def change
    add_column :motorcycles, :address, :string
    add_column :motorcycles, :latitude, :float
    add_column :motorcycles, :longitude, :float
  end
end
