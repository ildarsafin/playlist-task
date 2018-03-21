class User < ApplicationRecord
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :user_name, presence: true, uniqueness: { case_sensitive: false }

  has_many :playlists
end
