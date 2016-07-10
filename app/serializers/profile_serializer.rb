class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :nationality, :ranking, :players, :user_id
  has_one :user
end
