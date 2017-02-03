class Profile < ActiveRecord::Base
  belongs_to :user

  has_many :players, inverse_of: :profile
  has_many :games, through: :players
  has_many :comments, as: :commentable

  validates :user, uniqueness: true
end
