class AddUserIDtoVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :user_id, :integer
    add_index :vehicles, :user_id
  end
end
