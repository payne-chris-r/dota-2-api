class Game < ActiveRecord::Base
  validate :open?
  has_many :players, inverse_of: :game
  has_many :profiles, through: :players

  validates :players, length: { maximum: 4 }

  def open?
    if players.length >= 4
      false
    else
      true
    end
  end
end
