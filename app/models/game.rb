class Game < ActiveRecord::Base
  has_many :players, inverse_of: :game
  has_many :profiles, through: :players
end
