class Playlist < ApplicationRecord
  validates :name, presence: true

  belongs_to :user

  has_many :playlist_entities, dependent: :destroy
  has_many :mp3_entities, through: :playlist_entities
end
