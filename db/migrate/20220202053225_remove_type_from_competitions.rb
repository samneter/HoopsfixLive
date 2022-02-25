class RemoveTypeFromCompetitions < ActiveRecord::Migration[6.1]
  def change
    remove_column :competitions, :type
  end
end
