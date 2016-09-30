class Game < ActiveRecord::Base
  has_many :players, inverse_of: :game
  has_many :profiles, through: :players

  def full?
    p "players.length is", players.length
    if players.length >= 4
      true
    else
      false
    end
  end
end
