class CreateZones < ActiveRecord::Migration[6.0]
  def change
    create_table :zones do |t|
      t.string :neighbours
      t.boolean :visited
      t.integer :mark
      t.string :rooms

      t.timestamps
    end
  end
end
