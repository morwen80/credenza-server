class RenameFoodTableName < ActiveRecord::Migration[5.0]
  def change
    rename_table :foodUnits, :food_units
  end
end
