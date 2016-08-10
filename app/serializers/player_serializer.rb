#player Serializer
class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :profile, :game

  def profile
    object.profile.id
  end

  def game
    object.game.id
  end
end
