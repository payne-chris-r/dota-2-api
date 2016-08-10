class GameSerializer < ActiveModel::Serializer
  attributes :id, :players

  def players
    object.players.pluck(:id)
  end
end
