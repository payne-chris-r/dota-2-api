class Game < ActiveRecord::Base
  has_many :players, inverse_of: :game
end
