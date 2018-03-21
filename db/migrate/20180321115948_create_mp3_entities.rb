class CreateMp3Entities < ActiveRecord::Migration[5.1]
  def change
    create_table :mp3_entities do |t|
      t.string :title, null: false
      t.string :interpret, null: false
      t.string :album, null: false, default: ''
      t.integer :track, null: false, default: 0
      t.string :year, null: false, default: ''
      t.string :genre, null: false, default: ''

      t.timestamps
    end
  end
end
