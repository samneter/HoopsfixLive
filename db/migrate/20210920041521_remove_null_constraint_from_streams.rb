class RemoveNullConstraintFromStreams < ActiveRecord::Migration[6.1]
  def change
    change_column_null :streams, :game_id, true
  end
end
