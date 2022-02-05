class AddSlugsToClubs < ActiveRecord::Migration[6.1]
  def change
    add_column :clubs, :slug, :string
    add_index :clubs, :slug, unique: true
  end
end
