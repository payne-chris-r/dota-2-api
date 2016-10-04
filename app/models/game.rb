class Game < ActiveRecord::Base
  validate :open?
  has_many :players, inverse_of: :game
  has_many :profiles, through: :players

  def open?
    if players.length >= 4
      false
    else
      true
    end
  end
end
