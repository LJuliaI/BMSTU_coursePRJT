class RoomsChangeColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column(:rooms, :zone, :integer, references: :zones)
  end
end
