class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :date
      t.string :equipment
      t.integer :odometer
      t.string :status
      t.references :user, null: false, foregin_key: true
      t.timestamps
    end
  end
end
