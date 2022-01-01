class AddSlugToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :slug, :string
    add_index :games, :slug, unique: true
    add_column :clubs, :slug, :string
    add_index :clubs, :slug, unique: true
    add_column :competitions, :slug, :string
    add_index :competitions, :slug, unique: true
  end
end
