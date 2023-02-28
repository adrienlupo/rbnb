class CreateMotorcycles < ActiveRecord::Migration[7.0]
  def change
    create_table :motorcycles do |t|
      t.string :title
      t.integer :capacity
      t.string :category
      t.string :description
      t.string :moto_picture_url
      t.integer :price
      t.date :available_dates
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
