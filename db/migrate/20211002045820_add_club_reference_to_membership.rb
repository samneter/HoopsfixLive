class AddClubReferenceToMembership < ActiveRecord::Migration[6.1]
  def change
    add_reference :competitions, :club
  end
end
