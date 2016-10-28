class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :nationality, :ranking,
             :positions, :players, :user

  def players
    object.players.pluck(:id)
  end

  def user
    object.user.id
  end
end
