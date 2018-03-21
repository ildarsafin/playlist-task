class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :user_name, :first_name, :last_name
end
