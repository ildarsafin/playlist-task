class Mp3Entity < ApplicationRecord
  has_many :playlist_entities
  has_many :playlists, through: :playlist_entities
end
