class ChangeItemNumberType < ActiveRecord::Migration[5.0]
  def change
    rename_column :foodUnits, :itemnumber, :itemNumber
  end
end
