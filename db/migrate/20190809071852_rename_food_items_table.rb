class RenameFoodItemsTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :fooditems, :foodUnits
  end
end
