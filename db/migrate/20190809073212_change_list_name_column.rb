class ChangeListNameColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :lists, :listname, :listName
  end
end
