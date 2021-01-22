class CreateTrucks < ActiveRecord::Migration[6.0]
  def change
    create_table :trucks do |t|
      t.integer :truck_number
      t.integer :year
      t.string :make
      t.string :model
      t.string :vin
      t.string :plates, array: true, default: []
      t.string :inspection, array: true, default: []
      t.string :insurance_exp
      t.integer :axles
      t.string :tires, array: true, default: []
      t.string :ownership
      t.string :status  
      t.timestamps
    end
  end
end
