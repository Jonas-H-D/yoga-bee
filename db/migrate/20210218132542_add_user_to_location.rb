class AddUserToLocation < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :user, :string
  end
end
