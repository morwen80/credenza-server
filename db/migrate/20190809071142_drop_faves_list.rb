class DropFavesList < ActiveRecord::Migration[5.0]
  def change
    drop_table :faves 
  end
end
