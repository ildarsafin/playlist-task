class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|
      t.string :name, null: false

      t.references :user, index: true, null: false, foreign_key: true

      t.timestamps
    end

    add_index :playlists, :name, unique: true
  end
end
