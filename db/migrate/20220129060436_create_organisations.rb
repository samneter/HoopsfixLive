class CreateOrganisations < ActiveRecord::Migration[6.1]
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :abbreviation
      t.string :slug
      t.timestamps
    end
  end
end
