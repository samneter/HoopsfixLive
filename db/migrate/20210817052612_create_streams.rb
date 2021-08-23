class CreateStreams < ActiveRecord::Migration[6.1]
  def change
    create_table :streams do |t|\
      t.string :stream_url

      t.timestamps
    end
  end
end
