class ChangeTiptimeToInteger < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :tip_time
    add_column :games, :tip_time, :integer
  end
end
