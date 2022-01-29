class AddOrganisationToCompetition < ActiveRecord::Migration[6.1]
  def change
    add_column :competitions, :organisation_id, :integer
  end
end
