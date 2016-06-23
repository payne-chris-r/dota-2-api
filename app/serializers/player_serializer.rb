class PlayerSerializer < ActiveModel::Serializer
  attributes :id
  has_one :profiles
  has_one :games
end
