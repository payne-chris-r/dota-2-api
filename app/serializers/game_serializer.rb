class GameSerializer < ActiveModel::Serializer
  attributes :id, :players, :full?

  def players
    object.players.pluck(:id)
  end
end
