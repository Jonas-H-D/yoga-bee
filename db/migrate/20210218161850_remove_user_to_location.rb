class RemoveUserToLocation < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :user
  end
end
