class AddUserToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :user, :references
  end
end
