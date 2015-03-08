class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :review
      t.string :phone
      t.string :comment

      t.timestamps
    end
  end
end
