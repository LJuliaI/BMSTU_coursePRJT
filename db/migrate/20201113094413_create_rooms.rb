class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :zone
      t.string :coord
      t.integer :floor

      t.timestamps
    end
  end
end
