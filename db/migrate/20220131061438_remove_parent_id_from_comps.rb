class RemoveParentIdFromComps < ActiveRecord::Migration[6.1]
  def change
    remove_index :competitions, :parent_competition_id
    remove_column :competitions, :parent_competition_id
  end
end
