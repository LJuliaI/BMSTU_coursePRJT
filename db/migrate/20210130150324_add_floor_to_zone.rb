class AddFloorToZone < ActiveRecord::Migration[6.0]
  def change
    add_column :zones, :floor, :integer
  end
end
