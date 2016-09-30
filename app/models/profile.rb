class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :players, inverse_of: :profile
  has_many :games, through: :players
  validates :user, uniqueness: true
end
