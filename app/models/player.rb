class Player < ActiveRecord::Base
  belongs_to :profile, inverse_of: :players
  belongs_to :game, inverse_of: :players
  belongs_to :character, inverse_of: :player

  validates_associated :game

  validates_uniqueness_of :profile, :scope => [:game]
  validates_uniqueness_of :character, :scope => [:game]
end
