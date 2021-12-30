class AddStatusToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :status, :integer, default: 0, null: false
  end
end
