class CreateForklifts < ActiveRecord::Migration[6.0]
  def change
    create_table :forklifts do |t|
      t.integer :forklift_number
      t.integer :year
      t.string :make
      t.string :model
      t.string :fork_length
      t.string :fork_type
      t.string :weight_capacity
      t.timestamps
    end
  end
end
