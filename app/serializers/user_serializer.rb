#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :profile_id, :admin

  def profile_id
    object.profile.id if object.profile
  end
end
