class CreatePlaylistEntities < ActiveRecord::Migration[5.1]
  def change
    create_table :playlist_entities do |t|
      t.references :playlist, index: true, null: false, foreign_key: true
      t.references :mp3_entity, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
