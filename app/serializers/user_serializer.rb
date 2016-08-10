#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :profile, :admin

  def profile
    object.profile.id if object.profile
  end
end
