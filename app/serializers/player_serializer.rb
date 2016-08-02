class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :profile, :game

  def profile
    object.profile.id
  end
end
