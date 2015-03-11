class AddColumnToDrivers < ActiveRecord::Migration
  def change
    add_column :drivers, :place, :string, :after => :name
  end
end
