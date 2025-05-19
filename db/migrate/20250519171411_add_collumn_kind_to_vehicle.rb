class AddCollumnKindToVehicle < ActiveRecord::Migration[8.0]
  def change
    add_column :vehicles, :kind, :integer
  end
end
