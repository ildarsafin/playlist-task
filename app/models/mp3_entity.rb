class Mp3Entity < ApplicationRecord
  validates :title, presence: true
  validates :interpret, presence: true

  has_many :playlist_entities, dependent: :destroy
  has_many :playlists, through: :playlist_entities
end
