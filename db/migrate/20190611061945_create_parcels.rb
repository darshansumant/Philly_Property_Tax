class CreateParcels < ActiveRecord::Migration[5.2]
  def change
    create_table :parcels do |t|
      t.string :parcel_number
      t.integer :taxable_building
      t.integer :taxable_land
      t.integer :market_value

      t.timestamps
    end
  end
end
