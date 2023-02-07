class AddFuelNameToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :fuel, :string
    add_column :vehicles, :electric_range, :string
  end
end
