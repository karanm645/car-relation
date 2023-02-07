class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :photo
      t.integer :year
      t.string :make
      t.string :model
      t.string :fuel_economy

      t.timestamps
    end
  end
end
