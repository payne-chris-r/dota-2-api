class Character < ActiveRecord::Base
  has_one :player, inverse_of: :character
end
