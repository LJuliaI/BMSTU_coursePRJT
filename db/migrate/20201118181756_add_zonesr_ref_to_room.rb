class AddZonesrRefToRoom < ActiveRecord::Migration[6.0]
  def change
    add_reference :rooms, :zone, null: false, foreign_key: true
  end
end
