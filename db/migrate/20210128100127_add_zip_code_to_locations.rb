class AddZipCodeToLocations < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :country
    add_column :locations, :zip_code, :integer
    add_column :locations, :capacity_activity_room, :integer
    add_column :locations, :currency, :string
  end
end
