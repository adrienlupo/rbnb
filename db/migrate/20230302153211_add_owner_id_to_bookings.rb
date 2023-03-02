class AddOwnerIdToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :owner_id, :integer
  end
end
