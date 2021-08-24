class RemoveDescriptionFromCompetitions < ActiveRecord::Migration[6.1]
  def change
    remove_column :competitions, :description, :string
    add_column :competitions, :competition_id, :integer
  end
end
