class AddCoordToZone < ActiveRecord::Migration[6.0]
  def change
    add_column :zones, :coord, :string
  end
end
