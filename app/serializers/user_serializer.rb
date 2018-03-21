class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :user_name, :first_name, :last_name

  has_many :playlists, serializer: PlaylistSerializer
end
