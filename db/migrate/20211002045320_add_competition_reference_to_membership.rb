class AddCompetitionReferenceToMembership < ActiveRecord::Migration[6.1]
  def change
    add_reference :competitions, :membership
  end
end
