class AddAbbreviationsToClubs < ActiveRecord::Migration[6.1]
  def change
    add_column :clubs, :abbreviation, :string
  end
end
