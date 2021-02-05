class AddUnitNumberToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :unit_number, :integer
  end
end
