class GameSerializer < ActiveModel::Serializer
  attributes :id, :profiles, :open

  def profiles
    object.profiles.pluck(:id)
  end

  def open
    object.open?
  end
end
