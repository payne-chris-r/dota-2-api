#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :profile

  def profile
    object.profile.id
  end
end
