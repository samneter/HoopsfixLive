class ChangeTiptimeFormat < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :tip_time
    add_column :games, :tip_time, :datetime
  end
end
