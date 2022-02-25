class AddDisplayNameToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :display_name, :string
  end
end
