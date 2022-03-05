class CreateCompetitions < ActiveRecord::Migration[6.1]
  def change
    create_table :competitions do |t|
      t.string :name, index: true
      t.string :website
      t.string :logo

      t.timestamps
    end
  end
end
