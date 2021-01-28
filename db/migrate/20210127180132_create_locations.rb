class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :country
      t.integer :number_of_rooms
      t.integer :capacity
      t.integer :price_per_night
      t.integer :rating
      t.string :description

      t.timestamps
    end
  end
end
