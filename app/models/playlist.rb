class Playlist < ApplicationRecord
  belongs_to :user

  has_many :playlist_entities, dependent: :destroy
  has_many :mp3_entities, through: :playlist_entities
end
