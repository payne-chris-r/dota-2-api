class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :nationality, :ranking, :players, :user_id

  def players
    object.players.pluck(:id)
  end

  # def user_id
  #   object.user.id
  # end
end
