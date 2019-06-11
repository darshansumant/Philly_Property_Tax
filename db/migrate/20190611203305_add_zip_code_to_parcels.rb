class AddZipCodeToParcels < ActiveRecord::Migration[5.2]
  def change
    add_column :parcels, :zip_code, :string
  end
end
