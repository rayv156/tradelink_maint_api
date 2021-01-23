class CreateRepairs < ActiveRecord::Migration[6.0]
  def change
    create_table :repairs do |t|
      t.string :repair_type
      t.string :description
      t.string :pictures
      t.string :status
      t.references :request, null: false, foreign_key: true

      t.timestamps
    end
  end
end
