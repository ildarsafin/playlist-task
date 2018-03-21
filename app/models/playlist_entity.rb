class PlaylistEntity < ApplicationRecord
  belongs_to :playlist
  belongs_to :mp3_entity
end
